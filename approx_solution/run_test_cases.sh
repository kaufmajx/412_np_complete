#!/bin/bash

echo "Running test1_small.txt, should use 2 colors"
python3 Solution_C.py < test_cases/test1_small.txt
echo

echo "Running test2_triangle.txt, should use 3 colors"
python3 Solution_C.py < test_cases/test2_triangle.txt
echo

echo "Running test3_bipartite.txt, should use 2 colors"
python3 Solution_C.py < test_cases/test3_bipartite.txt
echo

echo "Running test4_disconnected.txt"
python3 Solution_C.py < test_cases/test4_disconnected.txt
echo

echo "Running test5_high_degree.txt, should use 3-4 colors"
python3 Solution_C.py < test_cases/test5_high_degree.txt
echo

echo "Running test6_large.txt"
python3 Solution_C.py < test_cases/test6_large.txt
echo
