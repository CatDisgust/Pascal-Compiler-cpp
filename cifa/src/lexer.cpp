#include "lexer.h"
#include <regex>
#include <iostream>

std::vector<Token> tokenize(const std::string& input) {
    std::vector<Token> tokens;

    try {
        // 完整的正则表达式，涵盖更多的 Pascal 语言标记类型
        std::regex token_regex(
            R"((program|begin|end|var|integer|real)|([a-zA-Z][a-zA-Z0-9]*)|([0-9]+\.[0-9]+)|([0-9]+)|(\+|\-|\*|\/|:=|=|<>|<=|>=|<|>)|(;|,|\(|\)|\.)|('([^']|'')*')|(\{[^}]*\}|\(\*[^*]*\*\))|(\s+))"
        );

        std::sregex_iterator begin(input.cbegin(), input.cend(), token_regex);
        std::sregex_iterator end;

        for (auto iter = begin; iter != end; ++iter) {
            std::smatch match = *iter;
            std::string token = match.str(0);
            std::cout << "Matched: " << token << std::endl;  // 打印匹配的字符串

            if (std::regex_match(token, std::regex(R"(program|begin|end|var|integer|real)"))) {
                tokens.emplace_back(TokenType::KEYWORD, token);
            } else if (std::regex_match(token, std::regex(R"([a-zA-Z][a-zA-Z0-9]*)"))) {
                tokens.emplace_back(TokenType::IDENTIFIER, token);
            } else if (std::regex_match(token, std::regex(R"([0-9]+\.[0-9]+)"))) {
                tokens.emplace_back(TokenType::REAL_NUMBER, token);
            } else if (std::regex_match(token, std::regex(R"([0-9]+)"))) {
                tokens.emplace_back(TokenType::NUMBER, token);
            } else if (std::regex_match(token, std::regex(R"(\+|\-|\*|\/|:=|=|<>|<=|>=|<|>)"))) {
                tokens.emplace_back(TokenType::OPERATOR, token);
            } else if (std::regex_match(token, std::regex(R"(;|,|\(|\)|\.)"))) {
                tokens.emplace_back(TokenType::DELIMITER, token);
            } else if (std::regex_match(token, std::regex(R"('([^']|'')*')"))) {
                tokens.emplace_back(TokenType::STRING_LITERAL, token);
            } else if (std::regex_match(token, std::regex(R"(\{[^}]*\}|\(\*[^*]*\*\))"))) {
                tokens.emplace_back(TokenType::COMMENT, token);
            } else if (std::regex_match(token, std::regex(R"(\s+)"))) {
                tokens.emplace_back(TokenType::WHITESPACE, token);
            } else {
                tokens.emplace_back(TokenType::UNKNOWN, token);
            }
        }
    } catch (const std::regex_error& e) {
        std::cerr << "Regex error: " << e.what() << std::endl;
    }

    return tokens;
}