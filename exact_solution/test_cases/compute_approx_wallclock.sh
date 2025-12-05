#!/bin/bash

log_runtime() {
    label=$1
    infile=$2
    outfile=$3

    echo "Running $label exact"

    TIME="exact time $infile: %E" /usr/bin/time \
        python3 ../cs412_mingraphcolor_exact.py < "$infile" \
        > "$outfile" 2>> runtime.log

    echo
    echo "Results for $infile:"
    echo "exact:         $(head -n 1 "$outfile")"
    echo "*******************************************************"
}

log_runtime "50 vertex 100 edge case"  "graph_50_100.txt"  "output/graph_50_100_exact_output.txt"
log_runtime "50 vertex 125 edge case"  "graph_50_125.txt"  "output/graph_50_125_exact_output.txt"
log_runtime "50 vertex 150 edge case"  "graph_50_150.txt"  "output/graph_50_150_exact_output.txt"
log_runtime "50 vertex 175 edge case"  "graph_50_175.txt"  "output/graph_50_175_exact_output.txt"
log_runtime "50 vertex 200 edge case"  "graph_50_200.txt"  "output/graph_50_200_exact_output.txt"
log_runtime "20 minute case" "graph_20_minute.txt" "output/graph_20_minute_exact_output.txt"

echo ""
echo "All timing info written to runtime.log"
