The two test case files (run_nonopt_casees.sh, and run_test_cases.sh) can be run using the bash command. 
The python file Solution_C_with_rand.py is the one I am using for the approximation.
This python file chooses a random order of nodes to visit in the graph, 
    and repeats that process for a set number of iterations.
The .txt files in the test_cases directory are used as input for the python file. 
The .txt files are in the following format:
    n   (number of edges)
    a b (two nodes connected by an unweighted edge)
    a b
    ... 