import sys
import schema_pb2

# Command-line arguments for the input and output files
infile = sys.argv[1]
outfile = sys.argv[2]


# Function to calculate grid coordinates based on a linear index and grid width
def calculate_coordinates(index, size_x):
    x = (index % size_x) * 2
    y = (index // size_x) * 2
    return x, y


# Function to read from a binary file into a Protocol Buffers object
def readFromFile():
    solutions = schema_pb2.Solutions()
    with open(infile, "rb") as f:
        solutions.ParseFromString(f.read())
    return solutions


# Function to write Protocol Buffers object data to a text file
def writeToFile(solutions):
    for solution in solutions.solution:
        # Initialize grid based on solution data
        grid = [[' ' for _ in range(solution.size_x * 2 - 1)] for _ in range(solution.size_y * 2 - 1)]

        # Update grid based on hints and connections
        for index in solution.white_hints:
            x, y = calculate_coordinates(index, solution.size_x)
            grid[y][x] = 'o'
        for index in solution.black_hints:
            x, y = calculate_coordinates(index, solution.size_x)
            grid[y][x] = '*'
        for connection in solution.connections:
            x_from, y_from = calculate_coordinates(connection.index_from, solution.size_x)
            x_to, y_to = calculate_coordinates(connection.index_to, solution.size_x)
            x_between = (x_from + x_to) // 2
            y_between = (y_from + y_to) // 2
            grid[y_between][x_between] = 'l'

        # Generate text_output from the updated grid
        text_output = f"SizeX: {solution.size_x}\nSizeY: {solution.size_y}\nGrid:\n"
        text_output += '\n'.join([' '.join(row) for row in grid])

        # Write text_output to the output text file
        with open(outfile, "a") as f:
            f.write(text_output + "\n\n")


# Read binary data into Protocol Buffers object
solutions = readFromFile()

# Write Protocol Buffers object data to text file
writeToFile(solutions)
