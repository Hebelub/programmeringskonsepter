# PythonEncoder.py
import schema_pb2


def calculate_coordinates(index, size_x):
    x = (index % size_x) * 2
    y = (index // size_x) * 2
    return x, y


def encode_protobuf_to_text(binary_input, output_file):
    # Deserialize the binary input into a Protocol Buffers message
    solution: schema_pb2.Solution = schema_pb2.Solution()  # Replace with your specific message type
    solution.ParseFromString(binary_input)

    grid = solution.Puzzle

    size_x = grid.sizeX
    size_y = grid.sizeY

    white_hints = grid.whiteHints
    black_hints = grid.blackHints

    # Create a (n*2-1)^2 sized grid based on the specified pattern:
    # Every index where x and y is odd, it should insert 'v'.
    # Every index where x and y is even, it should insert '.'
    # Else insert ' '
    grid = [[' ' if x % 2 == 0 or y % 2 == 0 else '.' if (x % 2 != 0) and (y % 2 != 0) else 'v' for x in range(size_x * 2 - 1)] for y in range(size_y * 2 - 1)]

    # Temp Code: Printing the grid for visualization
    for row in grid:
        print(' '.join(row))

    # Fill the grid with 'W' for white hints and 'B' for black hints based on indices
    for index in white_hints:
        x, y = calculate_coordinates(index, size_x)
        grid[y][x] = 'o'

    for index in black_hints:
        x, y = calculate_coordinates(index, size_x)
        grid[y][x] = '*'

    # Find the line connections position for each connection
    for connection in solution.Connections:
        index_from = connection.indexFrom
        index_to = connection.indexTo

        x_from, y_from = calculate_coordinates(index_from, size_x)
        x_to, y_to = calculate_coordinates(index_to, size_x)

        # Calculate the coordinate in between the two indices
        x_between = (x_from + x_to) // 2
        y_between = (y_from + y_to) // 2

        grid[y_between][x_between] = 'l'

    # Create the text format output
    text_output = f"SizeX: {size_x}\nSizeY: {size_y}\nGrid:\n" + "\n".join([cell for row in grid for cell in row])

    print(text_output)

    # Write the binary data to the output file
    with open(output_file, "wb") as file:
        file.write(text_output)
