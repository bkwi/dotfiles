#!/bin/bash

# map first to second

# map non us backslash to grave accent and tilde
# map right command to right option
hidutil property --set '{"UserKeyMapping":
    [
        {
            "HIDKeyboardModifierMappingSrc":0x700000064,
            "HIDKeyboardModifierMappingDst":0x700000035
        },
        {
            "HIDKeyboardModifierMappingSrc":0x7000000e7,
            "HIDKeyboardModifierMappingDst":0x7000000e6
        },
    ]
}'
