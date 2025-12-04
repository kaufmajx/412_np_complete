The two test case files (run_nonopt_casees.sh, and run_test_cases.sh) can be run using the bash command. 
The time.sh file is in the test cases folder.
all individula outputs will be in the test_cases/output folder.
The python file cs412_mingraphcolor_approx.c is the one I am using for the approximation.
This python file chooses a random order of nodes to visit in the graph, 
    and repeats that process for a set number of iterations.
There is an optional command line argument that allows you to choose the iteration amount.
The .txt files in the test_cases directory are used as input for the python file. 
The .txt files are in the following format:
    n   (number of edges)
    a b (two nodes connected by an unweighted edge)
    a b
    ... 