#include "regex_to_nfa.h"

NFA parse_regex(const std::string& regex) {
    NFA nfa;
    State* s1 = new State();
    State* s2 = new State();
    s2->is_final = true;

    s1->transitions[regex[0]].insert(s2);

    nfa.start = s1;
    nfa.end = s2;
    nfa.states = {s1, s2};
    return nfa;
}