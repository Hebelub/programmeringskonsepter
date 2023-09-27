# Data Assignment

For this project you use your existing puzzle solver as built in the Scala part along with an Encoder and a Decoder in Python.

Once delivered, you can run your code using [Bamboo](https://tools.uia.no/bamboo/browse/IKT212G23H-EP2DP/branches), which runs the validation test.
You can find the validation test puzzles in [teacher-tests/ValidationData](https://tools.uia.no/bitbucket/projects/IKT212G23H/repos/teacher-tests/browse/ValidationData).
This challenge is not about the solver, but about the encoding, so we only use simple puzzles.

### Project Structure

To run the tests in Bamboo, a specific structure is expected (see below). The root folder has to be named "DataAssignment", in which all the Scala files are located.
The solver Scala files will be reused from the Scala part and need not be uploaded.
The "PuzzleReaderWriter.scala" has to be updated and read and write the binary files related to the \*.proto file(s), which are also placed inside "DataAssignment".
The connection to the original text puzzle files as used in the Scala part is given by an encoder and a decoder written in Python and called "PuzzleEncoder.py" and "PuzzleDecoder.py".

The whole procedure is as follows:
`<puzzle input file>.txt` ---> *PythonEncoder.py* ---> `<puzzle input file>.in.bin` ---> *PuzzleSolver.scala* ---> `<puzzle input file>.out.bin` ---> *PythonDecoder.py* ---> `<puzzle output file>.txt`

Each program in the sequence gets two command line parameters: one for its input file name and one for its output file name.

The ACT ONE project folder is to be placed inside "DataAssignment", too. There will be no automatic check related to the ACT ONE, but please provide the execution log for the samples in the task description.

```sh
    |-DataAssignment
    |--*.proto
    |--PythonEncoder.py
    |--PythonDecoder.py
    |--PuzzleReaderWriter.scala
	|--<ACT-ONE-PROJECT-FOLDER>
```

Please see the sample files here for a trivial example for how to process puzzles.
