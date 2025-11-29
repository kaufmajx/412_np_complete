"""
Name: Morgan Wagner
Honor Code and Acknowledgments:
This work complies with the JMU Honor Code.
"""

#!/usr/bin/env python3
import sys
import random

def read_graph():
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

    n = max_vertex
    adj = [[] for _ in range(n)]

    for (u, v) in edges:
        u -= 1
        v -= 1
        adj[u].append(v)
        adj[v].append(u)

    return n, adj


def greedy_coloring_random_order(n, adj):
    """Greedy coloring in a random vertex order."""
    order = list(range(n))
    random.shuffle(order)

    color = [-1] * n

    for v in order:
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

    iterations = 1000

    best_num_colors = float("inf")
    best_assignment = None

    for i in range(1, iterations + 1):
        num_colors, assignment = greedy_coloring_random_order(n, adj)

        if num_colors < best_num_colors:
            best_num_colors = num_colors
            best_assignment = assignment[:]
            print(f"New best: {best_num_colors} colors (iteration {i})")

    # Print final best solution
    print("\nFinal best color count:", best_num_colors)
    #for v in range(n):
    #    print(v + 1, best_assignment[v])


if __name__ == "__main__":
    main()
