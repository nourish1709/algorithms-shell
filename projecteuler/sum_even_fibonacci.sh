#!/usr/bin/env bash
# https://projecteuler.net/problem=2
function sum_even_fibonacci() {
    max=$1
    first=1
    last=2
    sum=0

    while ((first < max)); do
      num_is_even=$(is_even last)

      if [ "$num_is_even" == "True" ]; then
          sum=$((sum + last))
      fi

      first_num_copy=$first
      first=$last
      last=$((last + first_num_copy))
    done

    echo $sum
}

function is_even() {
    num=$1
    modulo=$(( num%2 ))

    if ((modulo == 0)); then
      echo True
    else
      echo False
    fi
}

sum_even_fibonacci 4000000
