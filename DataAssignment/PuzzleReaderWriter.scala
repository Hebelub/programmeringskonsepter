import Schema.Solutions
import com.google.protobuf.InvalidProtocolBufferException

import java.nio.file.{Files, Paths}
import scala.collection.mutable.ListBuffer
import scala.collection.JavaConverters._


object PuzzleReaderWriter {

  def writePuzzlesToFile(filePath: String, puzzles: List[Puzzle.Grid]): Unit = {
    val solutionsBuilder = Solutions.newBuilder()

    for (grid <- puzzles) {
      val rows = (grid.length + 1) / 2
      val cols = (grid(0).length + 1) / 2

      val puzzleBuilder = Schema.Puzzle.newBuilder()
      puzzleBuilder.setSizeX(cols)
      puzzleBuilder.setSizeY(rows)

      val blackHints = ListBuffer[Int]()
      val whiteHints = ListBuffer[Int]()

      var actualR = 0
      var actualC = 0

      for (r <- grid.indices) {
        for (c <- grid(0).indices) {
          val cell = grid(r)(c)

          if (cell == '*' || cell == 'o') {
            actualR = r / 2
            actualC = c / 2
            val index = actualR * ((grid(0).length+1) / 2) + actualC

            if (cell == '*') {
              blackHints += index
            } else if (cell == 'o') {
              whiteHints += index
            }
          }
        }
      }


      var connections = ListBuffer[(Int, Int)]() // List to store the connections

      for (r <- grid.indices) {
        for (c <- grid(0).indices) {
          val cell = grid(r)(c)

          if (cell == 'l') {
            var fromIndex = 0
            var toIndex = 0

            if (r % 2 == 1) { // Odd row, vertical connection
              actualR = (r - 1) / 2
              actualC = c / 2
              fromIndex = actualR * ((grid(0).length + 1) / 2) + actualC

              actualR = (r + 1) / 2
              // actualC remains the same
              toIndex = actualR * ((grid(0).length + 1) / 2) + actualC
            } else if (c % 2 == 1) { // Odd column, horizontal connection
              actualR = r / 2
              actualC = (c - 1) / 2
              fromIndex = actualR * ((grid(0).length + 1) / 2) + actualC

              // actualR remains the same
              actualC = (c + 1) / 2
              toIndex = actualR * ((grid(0).length + 1) / 2) + actualC
            }

            connections += ((fromIndex, toIndex))
          }
        }
      }

      println(gridToString(grid))

      println("Connections: " + connections)


      puzzleBuilder.addAllBlackHints(blackHints.map(Integer.valueOf).asJava)
      puzzleBuilder.addAllWhiteHints(whiteHints.map(Integer.valueOf).asJava)

      val solutionBuilder = Schema.Solution.newBuilder()
      solutionBuilder.setPuzzle(puzzleBuilder)

      // Add connections to the solution builder
      for ((from, to) <- connections) {
        val connectionBuilder = Schema.Connection.newBuilder()
        connectionBuilder.setIndexFrom(from)
        connectionBuilder.setIndexTo(to)
        solutionBuilder.addConnections(connectionBuilder)
      }

      solutionsBuilder.addSolution(solutionBuilder)
    }

    val solutionsProto = solutionsBuilder.build()
    Files.write(Paths.get(filePath), solutionsProto.toByteArray)
  }

  def stringToGridCell(cell: Char): Char = cell match {
    case '*' => '*'
    case 'o' => 'o'
    case '_' => '.'
    case x =>
      println(s"Unexpected cell character: '$x'")
      throw new Exception("Unknown cell type")
  }

  def readPuzzlesFromFile(filePath: String): List[Puzzle.Grid] = {
    val puzzles = ListBuffer[Puzzle.Grid]()
    try {
      val byteArray = Files.readAllBytes(Paths.get(filePath))
      val puzzlesProto = Schema.Puzzles.parseFrom(byteArray)

      for (puzzleProto <- puzzlesProto.getPuzzleList().asScala) {
        val rows = puzzleProto.getSizeY()
        val cols = puzzleProto.getSizeX()
        var grid = Puzzle.createGrid(rows, cols)

        // Populate grid with hints
        for (blackHint <- puzzleProto.getBlackHintsList.asScala) {
          val r = blackHint / cols
          val c = blackHint % cols
          grid = Cell.setCell(grid, (r*2, c*2, '*'))
        }
        for (whiteHint <- puzzleProto.getWhiteHintsList.asScala) {
          val r = whiteHint / cols
          val c = whiteHint % cols
          grid = Cell.setCell(grid, (r*2, c*2, 'o'))
        }

        puzzles += grid
      }

    } catch {
      case e: InvalidProtocolBufferException => println("Failed to parse the file.")
      case e: Exception => println("An error occurred: " + e.getMessage)
    }

    puzzles.toList
  }

  def getSymbolFromCell(grid: Puzzle.Grid, cell: Cell.Cell): Char = {
    val (rowIndex, colIndex, cellType) = cell

    // Get the adjacent cells
    val adjacentCells = List(
      Cell.getRelativeCell(grid, cell, 0, 1)._3,
      Cell.getRelativeCell(grid, cell, 1, 0)._3,
      Cell.getRelativeCell(grid, cell, 0, -1)._3,
      Cell.getRelativeCell(grid, cell, -1, 0)._3
    )

    // Pattern match to find the correct symbol
    adjacentCells match {
      case List(a, b, c, d) if List(a, b, c, d).count(_ == 'l') == 2 && cellType == '*' => '┼'
      case List(_, a, _, b) if a == 'l' && b == 'l' && cellType == 'o' => '╡'
      case List(a, _, b, _) if a == 'l' && b == 'l' && cellType == 'o' => '╨'
      case List(a, b, _, _) if a == 'l' && b == 'l' => '┌'
      case List(_, a, b, _) if a == 'l' && b == 'l' => '┐'
      case List(_, _, a, b) if a == 'l' && b == 'l' => '┘'
      case List(a, _, _, b) if a == 'l' && b == 'l' => '└'
      case List(a, b, c, _) if a == 'l' && b == 'l' && c == 'l' => '├'
      case List(_, a, b, c) if a == 'l' && b == 'l' && c == 'l' => '┤'
      case List(a, _, b, c) if a == 'l' && b == 'l' && c == 'l' => '┴'
      case List(a, b, _, c) if a == 'l' && b == 'l' && c == 'l' => '┬'
      case List(a, b, c, d) if a == 'l' && b == 'l' && c == 'l' && d == 'l' => '┼'
      case List(a, _, b, _) if a == 'l' && b == 'l' => '─'
      case List(_, a, _, b) if a == 'l' && b == 'l' => '│'
      case _ if cellType == '*' => '*'
      case _ if cellType == 'o' => 'o'
      case _ => ' '
    }
  }

  def gridToString(grid: Puzzle.Grid): String = {
    val sb = new StringBuilder()

    for (rowIndex <- 0 until grid.length by 2) {
      val row = grid(rowIndex)

      for (colIndex <- 0 until row.length by 2) {
        val cell = row(colIndex)
        sb.append(getSymbolFromCell(grid, (rowIndex, colIndex, cell)))
      }

      sb.append("\n")
    }

    sb.toString()
  }

  def main(args: Array[String]): Unit = {
    val inputFilePath = if (args.length > 0) args(0) else "serialized_puzzles.pb"

    val puzzles = readPuzzlesFromFile(inputFilePath)

    // Debugging: Print the returned puzzles
    println("---- Debugging: Start ----")
    for ((puzzle, index) <- puzzles.zipWithIndex) {
      println(s"Puzzle $index:")
      for (row <- puzzle) {  // Assuming that each puzzle is a 2D array or similar structure
        println(row.map(cell => cell.toString).mkString(" "))  // Assuming that each cell can be converted to a string
      }
      println("-------------------------")
    }
    println("---- Debugging: End ----")
  }

}
