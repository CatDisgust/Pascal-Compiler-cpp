#ifndef LEXER_H
#define LEXER_H

#include <vector>
#include <string>
#include "token.h"

std::vector<Token> tokenize(const std::string& input);

#endif // LEXER_H