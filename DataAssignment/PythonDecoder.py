import sys
import schema_pb2

infile = sys.argv[1]
outfile = sys.argv[2]


def readFromFile():
    puzzles = schema_pb2.Solutions()
    with open(infile, "rb") as f:
        puzzles.ParseFromString(f.read())
    return puzzles


def writeToFile(solutions):
    count = 0
    with open(outfile, "a") as f:
        topic = "puzzles " + str(len(solutions.solution)) + "\n"
        f.write(topic)
    for puzzle in solutions.solution:
        with open(outfile, "a") as f:
            sizex = puzzle.sizex
            sizey = puzzle.sizey
            topic2 = "size " + str(sizex) + "x" + str(sizey) + "\n"
            f.write(topic2)
            f.write(puzzle.sol+"\n")


solutionsFromScala = readFromFile()
writeToFile(solutionsFromScala)
