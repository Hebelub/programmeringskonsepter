import Schema.Puzzle

import java.io.{FileInputStream, FileOutputStream}
import scala.io._
import java.util._

object PuzzleReaderWriter{
  var unsolvedFile:String = "";
  var solvedFile:String = "";
  var puzzles: List[Schema.Puzzle] = null;
  var num_puzzles: Int = 0;
  val output = Schema.Solutions.newBuilder();
  var outputfile: FileOutputStream = null;

  def createPuzzle(sizex: Int, sizey: Int): Schema.Puzzle = {
    Schema.Puzzle.newBuilder()
      .setSizex(sizex)
      .setSizey(sizey)
      .build()
  }

  def createSolution(sizex: Int, sizey: Int, sol: String): Schema.Solution = {
    Schema.Solution.newBuilder()
      .setSizex(sizex)
      .setSizey(sizey)
      .setSol(sol)
      .build()
  }

  def initRW(infile: String, outfile: String) = {
    unsolvedFile = infile
	  solvedFile = outfile
    val input = Schema.Puzzles.parseFrom(new FileInputStream(unsolvedFile));
    puzzles = input.getPuzzleList;
    num_puzzles = puzzles.size;
    outputfile = new FileOutputStream(solvedFile);
  }

  def getNumPuzzles(): Int={
    return num_puzzles;
  }

  def getPuzzle(index: Int): Schema.Puzzle = {
    val puzzle = puzzles.get(index)
    return createPuzzle(puzzle.getSizex, puzzle.getSizey)
  }

  def putSolution(puzzle: Schema.Puzzle) = {
    // Assuming you have a way to get the solution string here
    val someSolutionString = "YourSolutionHere"
    val puzzleOut = createSolution(puzzle.getSizex, puzzle.getSizey, someSolutionString)
    output.addSolution(puzzleOut)
  }

  def closing() = {
    output.build().writeTo(outputfile);
    outputfile.close();
  }

  def main(args: Array[String]): Unit = {
    println("Hello, World!")
  }

}
