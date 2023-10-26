import sys
import schema_pb2

# Command-line arguments for the input and output files with default values
infile = sys.argv[1] if len(sys.argv) > 1 else "serialized_solutions.out.bin"
outfile = sys.argv[2] if len(sys.argv) > 2 else "solved_puzzles.txt"


def get_cell(grid, row, col):
    if 0 <= row < len(grid) and 0 <= col < len(grid[0]):
        cell_type = grid[row][col]
    elif row % 2 != 0 and col % 2 != 0:
        cell_type = 'v'
    else:
        cell_type = 'x'
    return (row, col, cell_type)


def get_relative_cell(grid, cell, delta_row, delta_col):
    row, col, _ = cell
    return get_cell(grid, row + delta_row, col + delta_col)


def get_symbol_from_cell(grid, cell):
    row_index, col_index, cell_type = cell

    # Get the adjacent cells
    adjacent_cells = [
        get_relative_cell(grid, cell, 0, 1)[2],
        get_relative_cell(grid, cell, 1, 0)[2],
        get_relative_cell(grid, cell, 0, -1)[2],
        get_relative_cell(grid, cell, -1, 0)[2]
    ]

    a, b, c, d = adjacent_cells

    # Pattern match to find the correct symbol
    if adjacent_cells.count('l') == 2 and cell_type == '*':
        return '┼'
    elif a == b == 'l' and cell_type == 'o':
        return '╡'
    elif a == c == 'l' and cell_type == 'o':
        return '╨'
    elif a == b == 'l':
        return '┌'
    elif b == c == 'l':
        return '┐'
    elif c == d == 'l':
        return '┘'
    elif d == a == 'l':
        return '└'
    elif a == b == c == 'l':
        return '├'
    elif b == c == d == 'l':
        return '┤'
    elif c == d == a == 'l':
        return '┴'
    elif d == a == b == 'l':
        return '┬'
    elif all(x == 'l' for x in [a, b, c, d]):
        return '┼'
    elif a == c == 'l':
        return '─'
    elif b == d == 'l':
        return '│'
    elif cell_type == '*':
        return '*'
    elif cell_type == 'o':
        return 'o'
    else:
        return ' '


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

    with open(outfile, "w") as f:
        f.write(f"puzzles {len(solutions.solution)}\n")

    for solution in solutions.solution:
        puzzle = solution.puzzle
        size_x = puzzle.sizeX
        size_y = puzzle.sizeY

        # Initialize grid based on solution data
        grid = [[' ' for _ in range(size_x * 2 - 1)] for _ in range(size_y * 2 - 1)]

        # Update grid based on hints and connections
        for index in puzzle.whiteHints:
            x, y = calculate_coordinates(index, size_x)
            grid[y][x] = 'o'
        for index in puzzle.blackHints:
            x, y = calculate_coordinates(index, size_x)
            grid[y][x] = '*'
        for connection in solution.connections:
            x_from, y_from = calculate_coordinates(connection.indexFrom, size_x)
            x_to, y_to = calculate_coordinates(connection.indexTo, size_x)
            x_between = (x_from + x_to) // 2
            y_between = (y_from + y_to) // 2
            grid[y_between][x_between] = 'l'

        # Generate text_output from the updated grid
        text_output = f"size {size_x}x{size_y}\n"

        # Use get_symbol_from_cell to get the symbol for cells with even x and y
        for y in range(0, len(grid), 2):
            for x in range(0, len(grid[0]), 2):
                cell_type = grid[y][x]
                cell = (y, x, cell_type)
                symbol = get_symbol_from_cell(grid, cell)
                text_output += symbol
            text_output += "\n"

        # Write text_output to the output text file
        with open(outfile, "a", encoding='utf-8') as f:
            f.write(text_output)


if __name__ == "__main__":
    # Read binary data into Protocol Buffers object
    solutions = readFromFile()

    # Write Protocol Buffers object data to text file
    writeToFile(solutions)

    # Read the contents of the output file and print it to the console
    with open(outfile, 'r', encoding='utf-8') as f:
        print(f"Contents of {outfile}:")
        print(f.read())
