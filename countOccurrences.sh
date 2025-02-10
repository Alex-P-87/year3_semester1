#!/bin/bash

function countCharacterOccurrences() {
    local char=$1
    local str="hello this is a checking function, here we check how many letters are found like a parameter"
    local count=0
    local i

    for (( i=0; i<${#str}; i++ )); do
        if [[ "${str:$i:1}" == "$char" ]]; then
            ((count++))
        fi
    done

    echo $count 
}
