#!/bin/bash

echo "*******************************************************"
echo "Running non optimal exact - 20 minute runtime"
/usr/bin/time -p python3 cs412_mingraphcolor_exact.py < test_cases/graph_20_minute.txt \
    > test_cases/output/graph_20_minute_exact_output.txt \
    2>> runtime.log

echo "Results for graph_20_minute.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_20_minute_exact_output.txt)"
echo "*******************************************************"