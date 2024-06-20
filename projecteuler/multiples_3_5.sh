#!/usr/bin/env bash
# https://projecteuler.net/problem=1
function multiples_sum() {
    max=$1
    multiples=()

    for (( i = 1; i < $max; i++ )); do
      if [[ $((i % 3)) -eq 0 || $((i % 5)) -eq 0 ]]; then
        multiples+=($((i)))
      fi
    done

    sum=0
    for (( i = 0; i <= ${#multiples[@]}; i++ )); do
        sum=$((sum + multiples[i]))
    done

    echo "$sum"
}

sum=$(multiples_sum 1000)
echo "result=$sum"
