#ifndef TOKEN_H
#define TOKEN_H

#include <string>

enum class TokenType {
    IDENTIFIER,
    NUMBER,
    OPERATOR,
    WHITESPACE,
    KEYWORD,
    COMMENT,
    STRING_LITERAL,
    UNKNOWN,
    REAL_NUMBER,
    DELIMITER,
    // Pascal-specific tokens
    PROGRAM,
    BEGIN,
    END,
    VAR,
    INTEGER,
    REAL,
    // 添加其他 Pascal 标记类型...
};

struct Token {
    TokenType type;
    std::string value;

    Token(TokenType type, const std::string& value) : type(type), value(value) {}
};

#endif // TOKEN_H