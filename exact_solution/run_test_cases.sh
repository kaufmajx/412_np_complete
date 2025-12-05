#!/bin/bash

echo "Running 50 vertice 100 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_100.txt > test_cases/output/graph_50_100_exact_output.txt
echo

echo "Results for graph_50_100.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_50_100_exact_output.txt)"
echo "*******************************************************"



echo "Running 50 vertice 125 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_125.txt > test_cases/output/graph_50_125_exact_output.txt
echo

echo "Results for graph_50_125.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_50_125_exact_output.txt)"
echo "*******************************************************"


echo "Running 50 vertice 150 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_150.txt > test_cases/output/graph_50_150_exact_output.txt
echo

echo "Results for graph_50_150.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_50_150_exact_output.txt)"
echo "*******************************************************"


echo "Running 50 vertice 175 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_175.txt > test_cases/output/graph_50_175_exact_output.txt
echo

echo "Results for graph_50_175.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_50_175_exact_output.txt)"
echo "*******************************************************"


echo "Running 50 vertice 200 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_200.txt > test_cases/output/graph_50_200_exact_output.txt
echo

echo "Results for graph_50_200.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_50_200_exact_output.txt)"
echo "*******************************************************"


echo "Running 20 minute exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_20_minute.txt > test_cases/output/graph_20_minute_exact_output.txt
echo

echo "Results for graph_20_minute.txt:"
echo "exact:         $(head -n 1 test_cases/output/graph_20_minute_exact_output.txt)"
echo "*******************************************************"
