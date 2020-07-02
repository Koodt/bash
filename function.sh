#!/bin/bash

test_function() {
    echo 'Function' $1
}

for arg in arg1 arg2
do
    test_function $arg
done

test_function_too() {
    for arg in $@
    do
        echo 'Function' $arg
    done

    for arg in $*
    do
        echo 'Function' $arg
    done

    while (( "$#" ))
    do
        echo 'Function' $1
        shift
    done
}

test_function_too arg3 arg4 arg1
