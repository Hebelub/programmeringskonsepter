import sys
import schema_pb2
import os

# Default file paths for local execution
default_infile = "puzzles_input.txt"
default_outfile = "serialized_puzzles.in.bin"

# Use command-line arguments if provided, else use default files
infile = sys.argv[1] if len(sys.argv) > 1 else default_infile
outfile = sys.argv[2] if len(sys.argv) > 2 else default_outfile


def split_file(inputFile):
    with open(inputFile, "r") as file:
        content = file.readlines()
        content.pop(0)

        boards = list()
        current_puzzle = ""

        for line_index, line in enumerate(content):
            line = line.rstrip('\n')

            if "size" in line:
                if current_puzzle:  # If current_puzzle is not empty, add it to boards
                    boards.append(current_puzzle.strip())
                    current_puzzle = ""

                size_x = int(line[4:line.rfind('x')])
                size_y = int(line[line.rfind('x')+1:])

                current_puzzle += f"size {size_x}x{size_y}\n"

            else:
                current_puzzle += line + "\n"

        if current_puzzle:  # Don't forget the last puzzle
            boards.append(current_puzzle.strip())

        return boards


def puzzle_to_protobuf(input_puzzle, proto_puzzle):
    lines = input_puzzle.split("\n")

    # Parse size
    size_line = lines[0]
    size_x = int(size_line[4:size_line.rfind('x')])
    size_y = int(size_line[size_line.rfind('x')+1:])
    proto_puzzle.sizeX = size_x
    proto_puzzle.sizeY = size_y

    # Initialize a counter for the index (coord)
    coord = 0

    # Parse puzzle lines
    for line in lines[1:]:
        # Replace underscores with whitespaces and remove all other whitespaces
        line = line.replace(" ", "")

        # Pad line with whitespaces if shorter than size_x
        line = line.ljust(size_x, '_')

        for char in line:
            if char == '*':
                proto_puzzle.blackHints.append(coord)
            elif char == 'o':
                proto_puzzle.whiteHints.append(coord)
            coord += 1



if __name__ == "__main__":
    proto_puzzles = schema_pb2.Puzzles()
    input_puzzles = split_file(infile)

    for input_puzzle in input_puzzles:
        print("Input Puzzle Debug: ", input_puzzle)
        protoPuzzle = proto_puzzles.puzzle.add()
        puzzle_to_protobuf(input_puzzle, protoPuzzle)

    # Existing serialization code
    with open(outfile, "wb") as f:
        f.write(proto_puzzles.SerializeToString())

    # Debugging: Deserialize immediately to check
    with open(outfile, "rb") as f:
        data = f.read()
        newProtoPuzzles = schema_pb2.Puzzles()
        newProtoPuzzles.ParseFromString(data)
        print(f"Debugging Deserialize: {newProtoPuzzles}")

    print(f"Size of encoders infile ({infile}) is: {os.path.getsize(infile)}")
    print(f"Size of encoders outfile ({outfile}) is: {os.path.getsize(outfile)}")