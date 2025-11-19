"""
Name: Morgan Wagner
Honor Code and Acknowledgments:
This work complies with the JMU Honor Code.
Comments here on your code and submission.
"""

#!/usr/bin/env python3
import sys

def read_graph():
    """
    Reads a graph in the format:

        m
        u v
        u v
        ...

    Where m = number of edges.
    Vertex labels are arbitrary positive integers.
    We normalize them to 0..n-1 internally.
    """
    data = sys.stdin.read().strip().split()
    if not data:
        print("Input is empty.")
        sys.exit(1)

    m = int(data[0])

    edges = []
    idx = 1
    max_vertex = 0

    for _ in range(m):
        u = int(data[idx])
        v = int(data[idx + 1])
        idx += 2

        edges.append((u, v))
        max_vertex = max(max_vertex, u, v)

    # number of vertices is max label
    n = max_vertex

    # build adjacency list (0-index the vertices)
    adj = [[] for _ in range(n)]

    for (u, v) in edges:
        u -= 1
        v -= 1
        adj[u].append(v)
        adj[v].append(u)

    return n, adj


def greedy_coloring(n, adj):
    """
    Basic greedy coloring:
      For each vertex 0..n-1, assign the smallest legal color.
    """
    color = [-1] * n

    for v in range(n):
        forbidden = set()
        for nb in adj[v]:
            if color[nb] != -1:
                forbidden.add(color[nb])

        c = 0
        while c in forbidden:
            c += 1

        color[v] = c

    num_colors = max(color) + 1
    return num_colors, color


def main():
    n, adj = read_graph()
    num_colors, assignment = greedy_coloring(n, adj)

    print(num_colors)
    for v in range(n):
        print(v + 1, assignment[v])  # convert back to 1-indexed


if __name__ == "__main__":
    main()
