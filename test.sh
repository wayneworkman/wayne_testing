#!/bin/bash

for count in {0..3}; do
    git checkout four
    git pull
    git checkout -b ${count}
    echo "${count}" >> log.txt
    git commit -am "${count}"
    git push

    git checkout three
    git merge four
    git push

    git checkout two
    git merge three
    git push

    git checkout one
    git merge two
    git push
    
done