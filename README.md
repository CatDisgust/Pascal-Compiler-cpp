
# Pascal 词法分析器

这是一个简单的 Pascal 词法分析器项目，能够从 `input.pas` 文件中读取 Pascal 代码并进行词法分析。

## 目录结构

项目的目录结构如下：

```
C-Compiler/
├── cifa/
│   ├── build/
│   ├── include/
│   │   ├── lexer.h
│   │   ├── minimize_dfa.h
│   │   ├── nfa_to_dfa.h
│   │   ├── regax_to_nfa.h
│   │   ├── token.h
│   ├── src/
│   │   ├── lexer.cpp
│   │   ├── main.cpp
│   │   ├── minimize_dfa.cpp
│   │   ├── nfa_to_dfa.cpp
│   │   ├── regax_to_nfa.cpp
│   ├── CMakeLists.txt
├── input.pas
```

## 安装与编译

1. 确保你已经安装了 CMake 和一个兼容的 C++ 编译器（如 g++ 或 clang++）。

2. 使用以下命令来编译项目：

    ```sh
    mkdir -p build
    cd build
    cmake ..
    make
    ```

3. 编译完成后，生成的可执行文件将位于 `build` 目录中。

## 运行程序

1. 在 `C-Compiler` 目录下创建或编辑 `input.pas` 文件，输入你需要进行词法分析的 Pascal 代码。

2. 运行编译生成的可执行文件：

    ```sh
    ./PascalLexer  # 替换为生成的可执行文件的实际名称
    ```

## 示例文件

你可以在 `input.pas` 文件中输入以下 Pascal 代码作为示例：

```pascal
program Example;
var
    x, y: integer;
begin
    x := 10;
    y := x + 20;
    writeln(y);
end.
```

## 代码文件说明

### `main.cpp`

负责读取 `input.pas` 文件的内容，并调用词法分析器进行分析，然后输出分析结果。

### `lexer.h` 和 `lexer.cpp`

定义和实现了词法分析器的核心逻辑，包括将输入的 Pascal 代码分解成一系列的 Token。

### `token.h`

定义了 Token 类和 TokenType 枚举，用于表示词法分析得到的各类标记。

### 其他文件

- `regax_to_nfa.cpp` 和 `regax_to_nfa.h`
- `nfa_to_dfa.cpp` 和 `nfa_to_dfa.h`
- `minimize_dfa.cpp` 和 `minimize_dfa.h`

这些文件可能包含了从正则表达式到 NFA（非确定性有限自动机）、从 NFA 到 DFA（确定性有限自动机）的转换逻辑，以及最小化 DFA 的相关算法。
