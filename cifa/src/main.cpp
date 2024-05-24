#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <filesystem>

#include "lexer.h"
#include "token.h"

int main() {
    // 打印当前工作目录
    //std::cout << "Current path: " << std::filesystem::current_path() << std::endl;

    // 文件路径
    std::string filePath = "../../input.pas";

    // 检查文件是否存在
    if (!std::filesystem::exists(filePath)) {
        std::cerr << "文件不存在: " << filePath << std::endl;
        return 1;
    }

    // 打开 input.pas 文件
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        std::cerr << "无法打开文件: " << filePath << std::endl;
        return 1;
    }

    // 读取文件内容
    std::string input((std::istreambuf_iterator<char>(inputFile)),
                      std::istreambuf_iterator<char>());
    inputFile.close();

    // 进行词法分析
    std::vector<Token> tokens = tokenize(input);

    // 输出标记
    for (const Token& token : tokens) {
        std::string type_str;

        switch (token.type) {
            case TokenType::IDENTIFIER: type_str = "IDENTIFIER"; break;
            case TokenType::KEYWORD: type_str = "KEYWORD"; break;
            case TokenType::NUMBER: type_str = "NUMBER"; break;
            case TokenType::REAL_NUMBER: type_str = "REAL_NUMBER"; break;
            case TokenType::OPERATOR: type_str = "OPERATOR"; break;
            case TokenType::DELIMITER: type_str = "DELIMITER"; break;
            case TokenType::STRING_LITERAL: type_str = "STRING_LITERAL"; break;
            case TokenType::COMMENT: type_str = "COMMENT"; break;
            case TokenType::WHITESPACE: type_str = "WHITESPACE"; break;
            case TokenType::UNKNOWN: type_str = "UNKNOWN"; break;
        }

        std::cout << "Token: " << token.value << ", Type: " << type_str << std::endl;
    }

    return 0;
}