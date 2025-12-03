#!/bin/bash

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
