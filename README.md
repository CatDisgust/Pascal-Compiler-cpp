# Lexical Analyzer

This is a simple lexical analyzer implemented in C++ for parsing Pascal language keywords, identifiers, numbers, and operators.

## Features

- Identifies and categorizes different types of tokens:
  - Keywords
  - Identifiers
  - Numbers
  - Operators
- Supports Pascal language syntax

## Prerequisites

- C++ compiler supporting C++11 standard (e.g., `g++`)

## Compilation

To compile the lexical analyzer, use the following command:

```sh
g++ -std=c++11 -o lexer lexer.cpp
```

## Running the Analyzer

After compilation, you can run the executable directly:

```sh
./lexer
```

The program will wait for input. You can type the code you want to analyze and press `Enter`. To end the input, press `Ctrl+D` (on Unix-like systems) or `Ctrl+Z` followed by `Enter` (on Windows).

### Example

```sh
./lexer
```

Then input the following code:

```
program Example;
var x: integer;
begin
  x := 10 + 20;
  writeln(x);
end.
```

The output will be a list of tokens identified in the input code.

## Running with Input from a File

You can also provide input from a file. Suppose you have a file named `input.txt` with the following content:

```
program Example;
var x: integer;
begin
  x := 10 + 20;
  writeln(x);
end.
```

You can run the lexical analyzer with the file input as follows:

```sh
./lexer < input.txt
```

## Example Output

When you run the analyzer with the above example input, the output will look like:

```
Token: Type = 0, Value = program
Token: Type = 1, Value = Example
Token: Type = 0, Value = var
Token: Type = 1, Value = x
Token: Type = 3, Value = :
Token: Type = 0, Value = integer
Token: Type = 3, Value = ;
Token: Type = 0, Value = begin
Token: Type = 1, Value = x
Token: Type = 3, Value = :=
Token: Type = 2, Value = 10
Token: Type = 3, Value = +
Token: Type = 2, Value = 20
Token: Type = 3, Value = ;
Token: Type = 1, Value = writeln
Token: Type = 3, Value = (
Token: Type = 1, Value = x
Token: Type = 3, Value = )
Token: Type = 3, Value = ;
Token: Type = 0, Value = end
Token: Type = 3, Value = .
```

## License

This project is licensed under the MIT License.
```

你可以根据需要调整和扩展这个 `README.md` 文件。这个示例文件包含了项目的基本信息、编译和运行步骤，以及示例输出。