#include <iostream>
#include <vector>
#include <cctype>
#include <cstring>
#include <algorithm>

// 定义不同词法单元类型
enum TokenType {
    TOKEN_KEYWORD,    // 关键词
    TOKEN_IDENTIFIER, // 标识符
    TOKEN_NUMBER,     // 数字
    TOKEN_OPERATOR,   // 运算符
    TOKEN_UNKNOWN     // 未知字符
};

// 定义词法单元，包括词法单元的类型和值
struct Token {
    TokenType type;
    std::string value;
};

// 定义Pascal语言关键字（部分）
const std::vector<std::string> keywords = {
    "and", "array", "begin", "case", "const", "div", "do", "downto", "else",
    "end", "file", "for", "function", "goto", "if", "in", "label", "mod",
    "nil", "not", "of", "or", "packed", "procedure", "program", "record",
    "repeat", "set", "then", "to", "type", "until", "var", "while", "with"
};

// 验证是否为关键字
bool is_keyword(const std::string& str) {
    return std::find(keywords.begin(), keywords.end(), str) != keywords.end();
}

// 词法分析
void lexer(const std::string& src) {
    size_t length = src.length();
    size_t i = 0;

    while (i < length) {
        if (isspace(src[i])) {
            // 跳过空白字符
            i++;
            continue;
        }

        if (isalpha(src[i])) {
            // 处理标识符和关键字
            size_t start = i;
            while (isalnum(src[i]) || src[i] == '_') i++;
            size_t end = i;
            std::string buffer = src.substr(start, end - start);

            Token token;
            if (is_keyword(buffer)) {
                token.type = TOKEN_KEYWORD;
            } else {
                token.type = TOKEN_IDENTIFIER;
            }
            token.value = buffer;
            std::cout << "Token: Type = " << token.type << ", Value = " << token.value << "\n";
            continue;
        }

        if (isdigit(src[i])) {
            // 处理数字
            size_t start = i;
            while (isdigit(src[i])) i++;
            if (src[i] == '.') {
                i++;
                while (isdigit(src[i])) i++;
            }
            size_t end = i;
            std::string buffer = src.substr(start, end - start);

            Token token;
            token.type = TOKEN_NUMBER;
            token.value = buffer;
            std::cout << "Token: Type = " << token.type << ", Value = " << token.value << "\n";
            continue;
        }

        if (ispunct(src[i])) {
            // 处理操作符（包括多字符操作符）
            std::string buffer;
            buffer += src[i];
            if (src[i] == ':' && src[i + 1] == '=') {
                buffer += src[i + 1];
                i += 2;
            } else if ((src[i] == '<' && (src[i + 1] == '=' || src[i + 1] == '>')) || (src[i] == '>' && src[i + 1] == '=')) {
                buffer += src[i + 1];
                i += 2;
            } else {
                i++;
            }

            Token token;
            token.type = TOKEN_OPERATOR;
            token.value = buffer;
            std::cout << "Token: Type = " << token.type << ", Value = " << token.value << "\n";
            continue;
        }

        // 处理未知字符
        Token token;
        token.type = TOKEN_UNKNOWN;
        token.value = src[i];
        std::cout << "Token: Type = " << token.type << ", Value = " << token.value << "\n";
        i++;
    }
}

int main() {
    const std::string source_code = "program Example;\nvar x: integer;\nbegin\n  x := 42;\n  if x > 10 then\n    x := x + 1;\nend.";
    lexer(source_code);
    return 0;
}