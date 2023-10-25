import scala.io.Source
import scala.util.control.Breaks._
import java.io.PrintWriter
import java.io.File
import scala.collection.mutable.ListBuffer
import com.some.Schema
import java.nio.file.{Files, Paths}
import com.google.protobuf.InvalidProtocolBufferException
import scala.jdk.CollectionConverters.CollectionHasAsScala


object PuzzleReaderWriter {
  def writePuzzlesToFile(filePath: String, puzzles: List[Puzzle.Grid]): Unit = {
    val writer = new PrintWriter(new File(filePath))
    val sb = new StringBuilder(s"puzzles ${puzzles.size}\n")

    puzzles.foreach { grid =>
      val rows = (grid.length + 1) / 2
      val cols = (grid(0).length + 1) / 2
      sb.append(s"size ${cols}x${rows}\n")
      sb.append(gridToString(grid))
      sb.append("\n")
    }

    writer.write(sb.toString())
    writer.close()
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

        // Assume you can get the grid cells from puzzleProto, maybe like this:
        // val cells = puzzleProto.getCellsList().asScala

        // Populate grid with cells
        for (r <- 0 until rows) {
          for (c <- 0 until cols) {
            // Update grid with the cell value
            // grid = Cell.setCell(grid, (r, c, cells(r * cols + c)))
          }
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
