import scala.annotation.tailrec
import Rules.solveRules
import Rules.contradictionRules


object PuzzleSolver {

  def isCellSatisfied(grid: Puzzle.Grid, cell: Cell.Cell): Boolean = {
    val (row, col, cellType) = cell
    val lineType = Cell.determineLineType(grid, cell)
    val connectedCells = Cell.getConnectedAdjacentNodes(grid, cell)

    def areConnectedCellsStraight: Boolean = {
      connectedCells.forall { connectedCell =>
        Cell.determineLineType(grid, connectedCell) == Cell.Straight
      }
    }

    def isAtLeastOneConnectedCellCorner: Boolean = {
      connectedCells.exists { connectedCell =>
        Cell.determineLineType(grid, connectedCell) == Cell.Corner
      }
    }

    cellType match {
      case '*' => lineType == Cell.Corner && areConnectedCellsStraight
      case 'o' => (lineType == Cell.Straight || lineType == Cell.Corner) && isAtLeastOneConnectedCellCorner
      case '.' => lineType == Cell.Straight || lineType == Cell.Corner || lineType == Cell.Empty
      case _ => false // this covers other cases, which should not be part of the puzzle
    }
  }

  def isSingleClosedLoop(grid: Puzzle.Grid): Boolean = {
    val allLines = Puzzle.getCellsOfTypes(grid, List('l')).toSet
    var visited = Set[Cell.Cell]()
    var stack = List[Cell.Cell]()
    
    if (allLines.isEmpty) return false
    
    val firstLine = allLines.head
    visited += firstLine
    stack = firstLine :: stack
    
    while (stack.nonEmpty) {
      val currentLine = stack.head
      stack = stack.tail
      
      val allAdjacentLines = Cell.getConnectedLines(grid, currentLine)
      val unvisitedAdjacentLines = allAdjacentLines.filter(!visited.contains(_))
      
      if (allAdjacentLines.size != 2) {
        return false  // Not a single closed loop
      }
      
      visited ++= unvisitedAdjacentLines
      stack = unvisitedAdjacentLines ++ stack
    }

    visited == allLines
  }

  def isPuzzleComplete(grid: Puzzle.Grid): Boolean = {
    val specialCells = Puzzle.getCellsOfTypes(grid, List('o', '*'))
    val allCellsSatisfied = specialCells.forall(cell => isCellSatisfied(grid, cell))

    allCellsSatisfied && isSingleClosedLoop(grid)
  }

  def applyRule(grid: Puzzle.Grid, cell: Cell.Cell, rule: Rule): Boolean = {
    rule.conditions.forall { condition =>
      val relativeCell = Cell.getRelativeCell(grid, cell, condition.deltaRow, condition.deltaCol)
      relativeCell._3 == condition.cellType
    }
  }

  def solveEdge(grid: Puzzle.Grid, cell: Cell.Cell): Cell.Cell = {
    val (row, col, _) = cell
    
    val maybeRule = solveRules.find(rule => applyRule(grid, cell, rule))
    
    maybeRule match {
      case Some(rule) => (row, col, rule.targetCellType)
      case None => (row, col, ' ')
    }
  }

  def isCellLegal(grid: Puzzle.Grid, cell: Cell.Cell): Boolean = {
    val (row, col, cellType) = cell
    val connectedCells = Cell.getConnectedAdjacentNodes(grid, cell)

    def connectedCellCount: Int = connectedCells.size

    // Check for common condition: no more than 2 lines should be connected
    if (connectedCellCount > 2) return false

    cellType match {
      case '*' => 
        // All connected cells should be straight or connected to less than 2 lines
        connectedCells.forall { connectedCell =>
          val adjacentToConnected = Cell.getConnectedAdjacentNodes(grid, connectedCell)
          Cell.determineLineType(grid, connectedCell) == Cell.Straight || adjacentToConnected.size < 2
        }
      case 'o' => 
        // Both of the connected cells can't be straight at the same time
        connectedCells.count(cell => Cell.determineLineType(grid, cell) == Cell.Straight) != 2
      case '.' => 
        // For '.', 2 lines or less connected is okay, so it's always legal based on your rules
        true
      case _ => 
        // This covers other cases, which should not be part of the puzzle
        true
    }
  }

  def areAllCellsLegal(grid: Puzzle.Grid): Boolean = {
    val specialCells = Puzzle.getCellsOfTypes(grid, List('o', '*', '.'))
    specialCells.forall(cell => isCellLegal(grid, cell))
  }

  def applyRulesForOneCycle(grid: Puzzle.Grid): (Puzzle.Grid, Boolean) = {
    val emptyEdges = Puzzle.getCellsOfTypes(grid, List(' '))
    var newGrid = grid
    var changed = false
    
    for (edge <- emptyEdges) {
      val solvedEdge = solveEdge(newGrid, edge)
            if (solvedEdge._3 != ' ') {
        newGrid = Cell.setCell(newGrid, solvedEdge)
        changed = true
      }
    }
    
    (newGrid, changed)
  }

  def applyRulesUntilStable(grid: Puzzle.Grid): Puzzle.Grid = {
    var currentGrid = grid
    var lastUpdated: Option[Cell.Cell] = None
    var done = false

    // Apply rules until the grid is stable
    while (!done) {
      val (newGrid, changed) = applyRulesForOneCycle(currentGrid)
      currentGrid = newGrid
      if (!changed) {
        done = true
      }
    }

    while (!done) {
      val emptyEdges = Puzzle.getCellsOfTypes(currentGrid, List(' '))
      
      if (emptyEdges.isEmpty) {
        done = true
      } else {
        var newLastUpdated: Option[Cell.Cell] = None
        
        for (edge <- emptyEdges) {
          val solvedEdge = solveEdge(currentGrid, edge)
          if (solvedEdge._3 != ' ') {
            currentGrid = Cell.setCell(currentGrid, solvedEdge)
            newLastUpdated = Some(solvedEdge)
          }
        }
        
        if (newLastUpdated == lastUpdated) {
          // No changes were made, and we are back to the last updated cell.
          done = true
        } else {
          lastUpdated = newLastUpdated
        }
      }
    }
    
    currentGrid
  }

  def getComplexCellToTest(emptyEdges: List[Cell.Cell], grid: Puzzle.Grid): Option[Cell.Cell] = {
    if (emptyEdges.isEmpty) {
      None
    } else {
      val scoredEdges = emptyEdges.map { edge =>
        val touchingCells = Cell.getTouchingCells(grid, edge)
        
        val score = touchingCells.map { touchingCell =>
          val (_, _, cellType) = touchingCell
          var scoreForCell = cellType match {
            case '*' => 2
            case 'o' => 1
            case _   => 0
          }
          
          // Get connected lines ('l' and 'x') to the touching cell and count them
          val connectedLines = Cell.getConnectedLines(grid, touchingCell)
          val additionalScore = connectedLines.foldLeft(0: Double) { (acc, cell) =>
            cell._3 match {
              case 'l' => acc + 0.9 // Add 2 points for 'l'
              case 'x' => acc + 0.8  // Add 1 point for 'x'
              case _   => acc      // Do not add any points for other types
            }
          }

          // Add the additional score to the score for the touching cell
          scoreForCell + additionalScore
        }.sum
        
        (edge, score)
      }

      val sortedEdges = scoredEdges.sortBy(-_._2)  // Sort by descending score
      Some(sortedEdges.head._1)  // Return the cell with the highest score
    }
  }

  def solvePuzzle(grid: Puzzle.Grid): Option[Puzzle.Grid] = {
    val stableGrid = applyRulesUntilStable(grid)

    // Check if all cells are legal in the stable grid
    if (!areAllCellsLegal(stableGrid)) {
      return None
    }
    
    if (isPuzzleComplete(stableGrid)) {
      Some(stableGrid)
    } else {
      val emptyEdges = Puzzle.getCellsOfTypes(stableGrid, List(' '))
      
      getComplexCellToTest(emptyEdges, stableGrid) match {
        case Some(cellToTest) => 
          val (row, col, _) = cellToTest

          // Hypothetical grid with a line ('l') in the cell to test
          val withGuess = Cell.setCell(stableGrid, (row, col, 'l'))
          
          // Try solving with the hypothetical line
          solvePuzzle(withGuess) match {
            case Some(solution) => return Some(solution)
            case None => ()
          }

          // The hypothetical line led to a contradiction or was illegal, so place an 'x' instead
          val withX = Cell.setCell(stableGrid, (row, col, 'x'))
          solvePuzzle(withX)
        
        case None => None
      }
    }
  }


  def main(args: Array[String]): Unit = {

    // Use command-line arguments if provided, else use default paths
    val inputFilePath = if (args.length > 0) args(0) else "puzzles.txt"
    val outputFilePath = if (args.length > 1) args(1) else "solved_puzzles.txt"

    val grids = PuzzleReaderWriter.readPuzzlesFromFile(inputFilePath)

    val startTime = System.nanoTime()  // Record the start time

    var solvedPuzzles = List[Puzzle.Grid]()  // Initialize an empty list to store solved puzzles

    for ((grid, index) <- grids.zipWithIndex) {
      println(s"Solving puzzle ${index + 1}")
      println(PuzzleReaderWriter.gridToString(grid) + "\n")

      val puzzleStartTime = System.nanoTime()  // Record the start time for this puzzle

      // Solve the puzzle
      solvePuzzle(grid) match {
        case Some(solvedPuzzle) =>
          println("Solved Puzzle:")
          println(PuzzleReaderWriter.gridToString(solvedPuzzle))
          solvedPuzzles = solvedPuzzles :+ solvedPuzzle  // Add solved puzzle to the list
        case None =>
          println("Puzzle is unsolvable")
      }

      val puzzleEndTime = System.nanoTime()  // Record the end time for this puzzle
      val puzzleTimeElapsed = (puzzleEndTime - puzzleStartTime) / 1e6  // Time in milliseconds
      println(s"Time taken to solve puzzle ${index + 1}: $puzzleTimeElapsed ms")

      println("\n--------------------------\n")
    }

    // Write the solved puzzles to the output file specified in args(1)
    PuzzleReaderWriter.writePuzzlesToFile(outputFilePath, solvedPuzzles)

    val endTime = System.nanoTime()  // Record the end time
    val timeElapsed = (endTime - startTime) / 1e6  // Time in milliseconds

    println(s"Total time taken: $timeElapsed ms")
  }


}