import sys
import schema_pb2

infile = sys.argv[1]
outfile= sys.argv[2]

# Reads the input and returns a list of puzzle sizes.
def splitFile(inputFile):
    with open(inputFile, "r") as file:
        if file.mode == "r":
            content = file.readlines()
            content.pop(0)
            boards = list()

            for lineIndex, line in enumerate(content):
                content[lineIndex] = line.rstrip('\n')

            for lineIndex, line in enumerate(content):
                if "size" in line:
                    sizex=int(line[4:line.rfind('x')])
                    sizey=int(line[line.rfind('x')+1:])
#                    print("found puzzle with size "+str(sizex)+"x"+str(sizey))
                    boards.append((sizex,sizey))
            return boards

protoPuzzles = schema_pb2.Puzzles()
inputPuzzles = splitFile(infile)

for puzzle in inputPuzzles:
    protoPuzzle = protoPuzzles.puzzle.add()
    protoPuzzle.sizex=puzzle[0]
    protoPuzzle.sizey=puzzle[1]

with open(outfile, "wb") as f:
    f.write(protoPuzzles.SerializeToString())