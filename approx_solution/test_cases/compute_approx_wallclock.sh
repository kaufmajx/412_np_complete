#!/bin/bash

echo "*******************************************************"
echo "Running 50 vertex 100 edge case approximation"
/usr/bin/time -f "approx time graph_50_100.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50_100.txt \
    > output/graph_50_100_approx_output.txt 2>> runtime.log
echo

echo "Running 50 vertex 100 edge case exact"
/usr/bin/time -f "exact time  graph_50_100.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < graph_50_100.txt \
    > output/graph_50_100_exact_output.txt 2>> runtime.log
echo

echo "Results for graph_50_100.txt:"
echo "approximation: $(head -n 1 graph_50_100_approx_output.txt)"
echo "exact:         $(head -n 1 graph_50_100_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertex 125 edge case approximation"
/usr/bin/time -f "approx time graph_50_125.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50_125.txt \
    > output/graph_50_125_approx_output.txt 2>> runtime.log
echo

echo "Running 50 vertex 125 edge case exact"
/usr/bin/time -f "exact time  graph_50_125.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < graph_50_125.txt \
    > output/graph_50_125_exact_output.txt 2>> runtime.log
echo

echo "Results for graph_50_125.txt:"
echo "approximation: $(head -n 1 graph_50_125_approx_output.txt)"
echo "exact:         $(head -n 1 graph_50_125_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertex 150 edge case approximation"
/usr/bin/time -f "approx time graph_50_150.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50_150.txt \
    > output/graph_50_150_approx_output.txt 2>> runtime.log
echo

echo "Running 50 vertex 150 edge case exact"
/usr/bin/time -f "exact time  graph_50_150.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < graph_50_150.txt \
    > output/graph_50_150_exact_output.txt 2>> runtime.log
echo

echo "Results for graph_50_150.txt:"
echo "approximation: $(head -n 1 graph_50_150_approx_output.txt)"
echo "exact:         $(head -n 1 graph_50_150_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertex 175 edge case approximation"
/usr/bin/time -f "approx time graph_50_175.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50_175.txt \
    > output/graph_50_175_approx_output.txt 2>> runtime.log
echo

echo "Running 50 vertex 175 edge case exact"
/usr/bin/time -f "exact time  graph_50_175.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < graph_50_175.txt \
    > output/graph_50_175_exact_output.txt 2>> runtime.log
echo

echo "Results for graph_50_175.txt:"
echo "approximation: $(head -n 1 graph_50_175_approx_output.txt)"
echo "exact:         $(head -n 1 graph_50_175_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50 vertex 200 edge case approximation"
/usr/bin/time -f "approx time graph_50_200.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50_200.txt \
    > output/graph_50_200_approx_output.txt 2>> runtime.log
echo

echo "Running 50 vertex 200 edge case exact"
/usr/bin/time -f "exact time  graph_50_200.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < graph_50_200.txt \
    > output/graph_50_200_exact_output.txt 2>> runtime.log
echo

echo "Results for graph_50_200.txt:"
echo "approximation: $(head -n 1 graph_50_200_approx_output.txt)"
echo "exact:         $(head -n 1 graph_50_200_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running non_opt approximation"
/usr/bin/time -f "approx time non_opt.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py 1 < non_opt.txt \
    > output/non_opt_approx_output.txt 2>> runtime.log
echo

echo "Running non_opt exact"
/usr/bin/time -f "exact time  non_opt.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_exact.py < non_opt.txt \
    > output/non_opt_exact_output.txt 2>> runtime.log
echo

echo "Results for non_opt.txt:"
echo "approximation: $(head -n 1 non_opt_approx_output.txt)"
echo "exact:         $(head -n 1 non_opt_exact_output.txt)"
echo "*******************************************************"


echo "*******************************************************"
echo "Running 50000 edge case approximation"
/usr/bin/time -f "approx time graph_50000.txt: %E (%e secs)" \
    python3 ../cs412_mingraphcolor_approx.py < graph_50000.txt \
    > output/graph_50000_approx_output.txt 2>> runtime.log
echo

echo "Results for graph_50000.txt:"
echo "approximation: $(head -n 1 graph_50000_approx_output.txt)"
echo "*******************************************************"

echo ""
echo "All timing info written to runtime.log"
