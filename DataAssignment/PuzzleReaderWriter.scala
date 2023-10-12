import Schema.Solutions

import java.io.{FileInputStream, FileOutputStream}
import java.util
import scala.io._
import java.util._

object PuzzleReaderWriter{
  private var unsolvedFile: String = "";
  private var solvedFile: String = "";
  private var puzzles: util.List[Schema.Puzzle] = None;
  private var num_puzzles: Int = 0;
  private val output: Solutions.Builder = Schema.Solutions.newBuilder();
  private var outputfile: FileOutputStream = None;

  private def createPuzzle(sizeX: Int, sizeY: Int): Schema.Puzzle = {
    Schema.Puzzle.newBuilder()
      .setSizeX(sizeX)
      .setSizeY(sizeY)
      .build()
  }

  def createConnections(connections: util.ArrayList[Schema.Connection]): Schema.Connections = {
    val connectionsBuilder = Schema.Connections.newBuilder()
    connectionsBuilder.addAllConnections(connections)
    connectionsBuilder.build()
  }

  def createSolution(puzzle: Schema.Puzzle, connections: Schema.Connections): Schema.Solution = {
    Schema.Solution.newBuilder()
      .setPuzzle(puzzle)
      .setConnections(connections)
      .build()
  }

  def initRW(infile: String, outfile: String): Unit = {
    unsolvedFile = infile
	  solvedFile = outfile
    val input = Schema.Puzzles.parseFrom(new FileInputStream(unsolvedFile));
    puzzles = input.getPuzzleList;
    num_puzzles = puzzles.size;
    outputfile = new FileOutputStream(solvedFile);
  }

  def getNumPuzzles(): Int = {
    return num_puzzles;
  }

  def getPuzzle(index: Int): Schema.Puzzle = {
    val puzzle = puzzles.get(index)
    return createPuzzle(puzzle.getSizeX, puzzle.getSizeY)
  }

  def putSolution(puzzle: Schema.Puzzle): Solutions.Builder = {
    // Assuming you have a way to get the solution string here
    val someSolutionString = "YourSolutionHere"
    val puzzleOut = createSolution(puzzle.getSizeX, puzzle.getSizeY, someSolutionString)
    output.addSolution(puzzleOut)
  }

  def closing(): Unit = {
    output.build().writeTo(outputfile);
    outputfile.close();
  }

  def main(args: Array[String]): Unit = {
    println("Hello, World!")
  }

}
