import random
import schema_pb2  # Replace 'schema_pb2' with the actual name of your generated Python file


def calculate_adjacent_cells(index, size_x):
    # Calculate the coordinates (x, y) from the index
    x = index % size_x
    y = index // size_x

    # Calculate the adjacent cells' indices
    adjacent_indices = []
    for dx, dy in [(-1, 0), (1, 0), (0, -1), (0, 1)]:
        adj_x, adj_y = x + dx, y + dy
        if 0 <= adj_x < size_x and 0 <= adj_y < size_x:
            adj_index = adj_y * size_x + adj_x
            adjacent_indices.append(adj_index)

    return adjacent_indices


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

        size_x = puzzle.sizeX
        num_cells = size_x * size_x

        # Randomly add connections
        for _ in range(random.randint(0, num_cells // 4)):  # Adjust the range as needed
            index_from = random.randint(0, num_cells - 1)
            adjacent_cells = calculate_adjacent_cells(index_from, size_x)
            if adjacent_cells:
                index_to = random.choice(adjacent_cells)
                connection = solution.connections.add()
                connection.indexFrom = index_from
                connection.indexTo = index_to

    # Write the solutions to a new file
    with open(outfile, "wb") as f:
        f.write(solutions.SerializeToString())


# Debugging: Read and print the generated file
def debug_print_solutions(outfile):
    # Initialize a Solutions object to hold the data
    solutions = schema_pb2.Solutions()

    # Read the binary data from the file
    with open(outfile, "rb") as f:
        solutions.ParseFromString(f.read())

    # Print the read Solutions object
    print(solutions)


if __name__ == "__main__":
    create_empty_solutions("serialized_puzzles.pb", "serialized_solutions.pb")
    debug_print_solutions("serialized_solutions.pb")
