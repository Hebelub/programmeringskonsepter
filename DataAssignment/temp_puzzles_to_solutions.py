import schema_pb2  # Replace 'schema_pb2' with the actual name of your generated Python file


def create_empty_solutions(infile, outfile):
    # Load the existing puzzles
    with open(infile, "rb") as f:
        puzzles = schema_pb2.Puzzles()
        puzzles.ParseFromString(f.read())

    # Create an empty Solutions object
    solutions = schema_pb2.Solutions()

    # Create empty solutions for each puzzle
    for puzzle in puzzles.puzzle:
        solution = solutions.solution.add()
        solution.puzzle.CopyFrom(puzzle)
        # Note: solution.connections will be empty by default

    # Write the solutions to a new file
    with open(outfile, "wb") as f:
        f.write(solutions.SerializeToString())


if __name__ == "__main__":
    create_empty_solutions("serialized_puzzles.pb", "serialized_solutions.pb")
