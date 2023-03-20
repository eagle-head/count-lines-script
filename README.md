# Using the Line Counter Script

This guide will teach you how to use the provided Bash script to count the total number of lines in a folder and its subfolders. The script is designed to work on Linux and macOS systems.

## Prerequisites

- A basic understanding of the command line.
- Familiarity with Bash scripts.

## Getting Started

1. Create a new file named line_counter.md in your favorite text editor.
2. Copy the provided code into the line_counter.md file.
3. Save the file and close your text editor.
4. Open your terminal and navigate to the directory containing the line_counter.md file.
5. Rename the file to have a .sh extension instead of .md by running the following command:

```sh
mv line_counter.md line_counter.sh
```

6. Give the script execute permissions with the following command:

```sh
chmod +x line_counter.sh
```

## Using the Script

To use the script, follow these steps:

1. Open your terminal and navigate to the directory containing the line_counter.sh file.
2. Run the script by providing a folder path as an argument:

```sh
./line_counter.sh /path/to/folder
```

Replace /path/to/folder with the actual path to the folder you want to count lines in.

3. The script will then check if the folder exists and start counting the total number of lines in all files within the folder and its subfolders.
4. Upon completion, the script will output the total number of lines found, like so:

```sh
Total lines: 12345
```

## How the Script Works

Here's a brief overview of what the script does:

1. Checks if a folder path is provided as an argument.
2. Validates if the provided folder path exists.
3. Defines a function count_lines to count the number of lines in a file.
4. Initializes the total line count to 0.
5. Iterates through each file in the folder and its subfolders using the find command.
6. Invokes the count_lines function for each file and increments the total line count accordingly.
7. Outputs the total line count upon completion.
