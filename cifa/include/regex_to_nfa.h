#ifndef REGEX_TO_NFA_H
#define REGEX_TO_NFA_H

#include <map>
#include <set>

class State {
public:
    std::map<char, std::set<State*>> transitions;
    bool is_final = false;

    State() = default;
    ~State() {
        for (auto& transition : transitions) {
            for (State* state : transition.second) {
                delete state;
            }
        }
    }
};

struct NFA {
    State* start;
    State* end;
    std::set<State*> states;

    ~NFA() {
        for (State* state : states) {
            delete state;
        }
    }
};

NFA parse_regex(const std::string& regex);

#endif // REGEX_TO_NFA_H