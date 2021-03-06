#!/bin/bash

dir=$(dirname `realpath $0`)
cat \
    | python3 $dir/get_bibtex.py \
    | $dir/unicode2latex/unicode2latex.py -rb \
    | python3 $dir/do_abbrv.py \
    | python3 $dir/gen_keys.py
