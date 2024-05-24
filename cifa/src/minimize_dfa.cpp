#include "minimize_dfa.h"
#include <map>
#include <set>
#include <algorithm>

DFA minimize_dfa(DFA& dfa) {
    // Step 1: Partition DFA states into final and non-final states
    std::set<DFAState*> final_states;
    std::set<DFAState*> non_final_states;

    for (DFAState* state : dfa.states) {
        if (state->is_final) {
            final_states.insert(state);
        } else {
            non_final_states.insert(state);
        }
    }

    std::vector<std::set<DFAState*>> partitions = { final_states, non_final_states };

    // Step 2: Refine partitions
    bool partitioned = true;
    while (partitioned) {
        partitioned = false;
        std::vector<std::set<DFAState*>> new_partitions;

        for (const auto& partition : partitions) {
            std::map<std::map<char, DFAState*>, std::set<DFAState*>> partition_map;

            for (DFAState* state : partition) {
                partition_map[state->transitions].insert(state);
            }

            for (const auto& entry : partition_map) {
                new_partitions.push_back(entry.second);
                if (entry.second.size() < partition.size()) {
                    partitioned = true;
                }
            }
        }

        partitions = new_partitions;
    }

    // Step 3: Create new minimized DFA
    DFA minimized_dfa;
    std::map<DFAState*, DFAState*> state_mapping;

    for (const auto& partition : partitions) {
        DFAState* new_state = new DFAState();
        minimized_dfa.states.insert(new_state);

        for (DFAState* old_state : partition) {
            state_mapping[old_state] = new_state;
            if (old_state == dfa.start) {
                minimized_dfa.start = new_state;
            }
            if (old_state->is_final) {
                new_state->is_final = true;
            }
        }
    }

    for (DFAState* old_state : dfa.states) {
        DFAState* new_state = state_mapping[old_state];
        for (const auto& transition : old_state->transitions) {
            char symbol = transition.first;
            DFAState* target_state = transition.second;
            new_state->transitions[symbol] = state_mapping[target_state];
        }
    }

    return minimized_dfa;
}