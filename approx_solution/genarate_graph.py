import sys
import random
from itertools import combinations

def generate_graph_file(n, m, filename):
    """
    Generates a graph file with:
      - n vertices labeled v1...vn
      - m random undirected edges
      - first line = number of edges
      - following lines formatted as: vA vB
    """

    # All possible undirected edges
    possible_edges = list(combinations(range(1, n + 1), 2))

    if m > len(possible_edges):
        raise ValueError(f"Cannot create {m} edges with {n} vertices. Max possible is {len(possible_edges)}.")

    # Choose m unique random edges
    edges = random.sample(possible_edges, m)

    # Write to file
    with open(filename, "w") as f:
        f.write(str(m) + "\n")
        for u, v in edges:
            f.write(f"v{u} v{v}\n")

    print(f"Graph created: {filename}  ({n} vertices, {m} edges)")


def main():
    n = 50  # Number of vertices
    m = 200  # Number of edges
    filename = "test_cases/test_graph.txt"
    generate_graph_file(n, m, filename)


if __name__ == "__main__":
    main()
