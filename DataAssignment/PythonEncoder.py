import sys
import schema_pb2

# Default file paths for local execution
default_infile = "puzzles_input.txt"
default_outfile = "serialized_puzzles.pb"

# Use command-line arguments if provided, else use default files
infile = sys.argv[1] if len(sys.argv) > 1 else default_infile
outfile = sys.argv[2] if len(sys.argv) > 2 else default_outfile


# Reads the input and returns a list of puzzle sizes.
def splitFile(inputFile):
    with open(inputFile, "r") as file:
        content = file.readlines()
        content.pop(0)
        boards = list()

        for line_index, line in enumerate(content):
            content[line_index] = line.rstrip('\n')

        for line_index, line in enumerate(content):
            if "size" in line:
                size_x = int(line[4:line.rfind('x')])
                size_y = int(line[line.rfind('x')+1:])
                print(f"Found puzzle with size ({size_x}, {size_y})")
                boards.append((size_x, size_y))
        return boards


if __name__ == "__main__":
    protoPuzzles = schema_pb2.Puzzles()
    inputPuzzles = splitFile(infile)

    for puzzle in inputPuzzles:
        protoPuzzle = protoPuzzles.puzzle.add()
        protoPuzzle.sizeX = puzzle[0]
        protoPuzzle.sizeY = puzzle[1]

    with open(outfile, "wb") as f:
        f.write(protoPuzzles.SerializeToString())
