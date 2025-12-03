#!/bin/bash

echo "*******************************************************"
echo "Running 50 vertice 100 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50_100.txt > test_cases/output/graph_50_100_approx_output.txt
echo

echo "Running 50 vertice 100 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_100.txt > test_cases/output/graph_50_100_exact_output.txt
echo

echo "Results for graph_50_100.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50_100_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/graph_50_100_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertice 125 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50_125.txt > test_cases/output/graph_50_125_approx_output.txt
echo

echo "Running 50 vertice 125 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_125.txt > test_cases/output/graph_50_125_exact_output.txt
echo

echo "Results for graph_50_125.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50_125_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/graph_50_125_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertice 150 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50_150.txt > test_cases/output/graph_50_150_approx_output.txt
echo

echo "Running 50 vertice 150 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_150.txt > test_cases/output/graph_50_150_exact_output.txt
echo

echo "Results for graph_50_150.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50_150_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/graph_50_150_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertice 175 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50_175.txt > test_cases/output/graph_50_175_approx_output.txt
echo

echo "Running 50 vertice 175 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_175.txt > test_cases/output/graph_50_175_exact_output.txt
echo

echo "Results for graph_50_175.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50_175_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/graph_50_175_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertice 200 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50_200.txt > test_cases/output/graph_50_200_approx_output.txt
echo

echo "Running 50 vertice 200 edge case exact"
python3 cs412_mingraphcolor_exact.py < test_cases/graph_50_200.txt > test_cases/output/graph_50_200_exact_output.txt
echo

echo "Results for graph_50_200.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50_200_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/graph_50_200_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running non optimal approximation"
python3 cs412_mingraphcolor_approx.py 1 < test_cases/non_opt.txt > test_cases/output/non_opt_approx_output.txt
echo

echo "Running non optimal exact"
python3 cs412_mingraphcolor_exact.py < test_cases/non_opt.txt > test_cases/output/non_opt_exact_output.txt
echo

echo "Results for non_opt.txt:"
echo "approximation: $(head -n 1 test_cases/output/non_opt_approx_output.txt)"
echo "exact:         $(head -n 1 test_cases/output/non_opt_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50000 edge case approximation"
python3 cs412_mingraphcolor_approx.py < test_cases/graph_50000.txt > test_cases/output/graph_50000_approx_output.txt
echo

echo "Results for graph_50000.txt:"
echo "approximation: $(head -n 1 test_cases/output/graph_50000_approx_output.txt)"
echo "*******************************************************"
