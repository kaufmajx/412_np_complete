"""
Name: Morgan Wagner
Min-Graph-Coloring Exact Solution
Honor Code and Acknowledgments:
This work complies with the JMU Honor Code.
Comments here on your code and submission.
"""
import sys
import random


def read_graph():
    # Read first non-empty line for m
    m_line = input().strip()
    while m_line == "":
        m_line = input().strip()
    m = int(m_line)

    edges = []
    label_to_id = {}
    next_id = 0

    # Read exactly m edges from input()
    while len(edges) < m:
        try:
            line = input().strip()
        except EOFError:
            break

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

    # Default
    iterations = 100

    # If a command line argument is given, override
    if len(sys.argv) > 1:
        try:
            iterations = int(sys.argv[1])
        except ValueError:
            print("Invalid iterations argument; using default 1000.")
            
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
