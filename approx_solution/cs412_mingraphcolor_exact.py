"""
Name: Jelal Kaufman
Min-Graph-Coloring Exact Solution
Honor Code and Acknowledgments:
This work complies with the JMU Honor Code.
Comments here on your code and submission.

Received help from the following people:
- Geeks for Geeks
- ChatGPT
"""
def main():
    num_edges = int(input())
    g = {}

    # Read edges
    for _ in range(num_edges):
        u, v = input().split()
        if u not in g:
            g[u] = set()
        if v not in g:
            g[v] = set()
        g[u].add(v)
        g[v].add(u)

    k, colors = min_graph_color(g)

    # Print minimum number of colors
    print(k)

    # Print vertex assignments (sorted for consistency)
    for node in sorted(colors):
        print(node, colors[node])


def is_safe(node, g, colors, c):
    for neighbor in g[node]:
        if colors[neighbor] == c:
            return False
    return True


def backtrack(nodes, idx, max_colors, g, colors):
    if idx == len(nodes):
        return True

    node = nodes[idx]

    for c in range(max_colors):
        if is_safe(node, g, colors, c):
            colors[node] = c
            if backtrack(nodes, idx + 1, max_colors, g, colors):
                return True
            colors[node] = -1

    return False


def min_graph_color(g):
    nodes = list(g.keys())
    colors = {node: -1 for node in nodes}

    # Try 1 color, 2 colors, ... until successful
    for k in range(1, len(nodes) + 1):
        if backtrack(nodes, 0, k, g, colors):
            return k, colors

    return len(nodes), colors  # worst case


if __name__ == "__main__":
    main()
