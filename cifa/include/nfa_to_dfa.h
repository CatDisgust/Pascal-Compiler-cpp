#ifndef NFA_TO_DFA_H
#define NFA_TO_DFA_H

#include <map>
#include <set>
#include <queue>
#include <string>
#include "regex_to_nfa.h"  // 确保包含了 NFA 的定义
#include "token.h"         // 包含 Token 定义

class DFAState {
public:
    bool is_final = false;
    TokenType token_type = TokenType::UNKNOWN;
    std::map<char, DFAState*> transitions;

    DFAState() = default;
    ~DFAState() = default;
};

struct DFA {
    DFAState* start = nullptr;
    std::set<DFAState*> states;

    ~DFA() {
        for (DFAState* state : states) {
            delete state;
        }
    }
};

DFA nfa_to_dfa(const NFA& nfa);

#endif // NFA_TO_DFA_H