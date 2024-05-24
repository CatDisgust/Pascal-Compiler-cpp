#include "nfa_to_dfa.h"

DFA nfa_to_dfa(const NFA& nfa) {
    DFA dfa;
    std::map<std::set<State*>, DFAState*> state_map;
    std::queue<std::set<State*>> work_queue;

    auto start_set = std::set<State*>{ nfa.start };
    auto start_state = new DFAState();
    dfa.start = start_state;
    dfa.states.insert(start_state);
    state_map[start_set] = start_state;
    work_queue.push(start_set);

    while (!work_queue.empty()) {
        auto current_set = work_queue.front();
        work_queue.pop();
        DFAState* current_dfa_state = state_map[current_set];

        // Check if current DFA state is a final state
        for (State* nfa_state : current_set) {
            if (nfa_state->is_final) {
                current_dfa_state->is_final = true;
                break;
            }
        }

        // Get transitions for the current set of NFA states
        std::map<char, std::set<State*>> new_transitions;
        for (State* nfa_state : current_set) {
            for (const auto& transition : nfa_state->transitions) {
                char symbol = transition.first;
                const std::set<State*>& target_states = transition.second;
                new_transitions[symbol].insert(target_states.begin(), target_states.end());
            }
        }

        // Create new DFA states for each symbol transition
        for (const auto& transition : new_transitions) {
            char symbol = transition.first;
            const std::set<State*>& target_set = transition.second;

            if (state_map.find(target_set) == state_map.end()) {
                DFAState* new_dfa_state = new DFAState();
                dfa.states.insert(new_dfa_state);
                state_map[target_set] = new_dfa_state;
                work_queue.push(target_set);
            }

            current_dfa_state->transitions[symbol] = state_map[target_set];
        }
    }

    return dfa;
}