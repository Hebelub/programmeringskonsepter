import scala.io.Source
import scala.util.control.Breaks._
import java.io.PrintWriter
import java.io.File

object PuzzleReaderWriter {

  def writePuzzlesToFile(filePath: String, puzzles: List[Puzzle.Grid]): Unit = {
    val writer = new PrintWriter(new File(filePath))
    writer.write(s"puzzles ${puzzles.size}\n")  // Write the number of puzzles to the file

    val puzzleStrings = puzzles.map { grid =>
      val rows = (grid.length + 1) / 2  // Assumes that the number of rows is even
      val cols = (grid(0).length + 1) / 2  // Assumes that the number of columns is even
      s"size ${cols}x${rows}\n" + gridToString(grid) + "\n"
    }

    writer.write(puzzleStrings.mkString)
    writer.close()
  }

  def stringToGridCell(cell: Char): Char = cell match {
    case '*' => '*'
    case 'o' => 'o'
    case '_' => '.'
    case _ => throw new Exception("Unknown cell type")
  }

  def readPuzzlesFromFile(filePath: String): List[Puzzle.Grid] = {
    val lines = Source.fromFile(filePath).getLines().toList
    var puzzles = List[Puzzle.Grid]()
    var i = 1  // Skip the first line which contains the number of puzzles

    while (i < lines.size) {
      val sizeLine = lines(i)
      val Array(cols, rows) = sizeLine.split(" ")(1).split("x").map(_.toInt)
      i += 1

      var grid = Puzzle.createGrid(rows, cols)  // Initialize an empty grid
      var incompleteGrid = false

      breakable {
        for (r <- 0 until rows) {
          if (i + r < lines.size) {
            val rowCells = lines(i + r).replaceAll(" ", "").map(stringToGridCell)
            for (c <- 0 until cols) {
              grid = Cell.setCell(grid, (r * 2, c * 2, rowCells(c)))  // Update the grid
            }
          } else {
            // Handle the error or break the loop
            println(s"Warning: Not enough lines to read a full ${rows}x${cols} grid.")
            incompleteGrid = true
            // Exit the for-loop
            break
          }
        }
      }

      if (!incompleteGrid) {
        puzzles = puzzles :+ grid  // Add the grid to the list of puzzles
        i += rows
      }
    }

    puzzles
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
    grid.zipWithIndex.flatMap { case (row, rowIndex) =>
      if (rowIndex % 2 == 0) {  // Only process rows with even index
        Some(
          row.zipWithIndex.flatMap { case (cell, colIndex) =>
            if (colIndex % 2 == 0) {  // Only process columns with even index
              Some(getSymbolFromCell(grid, (rowIndex, colIndex, cell)))
            } else {
              None  // Skip cells with odd column index
            }
          }.mkString("")
        )
      } else {
        None  // Skip rows with odd index
      }
    }.mkString("\n")
  }

}
