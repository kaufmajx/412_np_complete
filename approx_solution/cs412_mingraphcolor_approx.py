#!/usr/bin/env python3
import sys
import random

def read_graph():
    lines = sys.stdin.read().splitlines()
    if not lines:
        print("Input is empty.")
        sys.exit(1)

    # Read first non-empty line for m
    i = 0
    while i < len(lines) and lines[i].strip() == "":
        i += 1
    m = int(lines[i].strip())
    i += 1

    edges = []
    label_to_id = {}
    next_id = 0

    # Read exactly m edges
    while len(edges) < m and i < len(lines):
        line = lines[i].strip()
        i += 1

        if line == "" or line.startswith("#"):
            continue

        parts = line.split()
        if len(parts) < 2:
            continue

        u_label, v_label = parts[0], parts[1]

        if u_label not in label_to_id:
            label_to_id[u_label] = next_id
            next_id += 1
        if v_label not in label_to_id:
            label_to_id[v_label] = next_id
            next_id += 1

        u = label_to_id[u_label]
        v = label_to_id[v_label]

        edges.append((u, v))

    if len(edges) != m:
        print(f"Expected {m} edges, got {len(edges)}")
        sys.exit(1)

    n = next_id
    adj = [[] for _ in range(n)]

    for u, v in edges:
        adj[u].append(v)
        adj[v].append(u)

    # Reverse map
    id_to_label = {v: k for k, v in label_to_id.items()}

    return n, adj, id_to_label


def greedy_coloring_random_order(n, adj):
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
    n, adj, id_to_label = read_graph()

    iterations = 1000
    best_num_colors = float("inf")
    best_assignment = None

    for _ in range(iterations):
        num_colors, assignment = greedy_coloring_random_order(n, adj)
        if num_colors < best_num_colors:
            best_num_colors = num_colors
            best_assignment = assignment[:]

    # PRINT IN REQUIRED FORMAT
    print(best_num_colors)
    for vid in range(n):
        print(id_to_label[vid], best_assignment[vid])


if __name__ == "__main__":
    main()
