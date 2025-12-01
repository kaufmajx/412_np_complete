"""
Name: Jelal Kaufman
Min-Graph-Coloring Exact Solution
Honor Code and Acknowledgments:
This work complies with the JMU Honor Code.
Comments here on your code and submission.
"""
def main():
    num_items = int(input())
    g = {}
    for _ in range(num_items):
        v1, v2 = map(int, input().split())
        if v1 not in g:
            g[v1] = set()
        if v2 not in g:
            g[v2] = set()
        g[v1].add(v2)
        g[v2].add(v1)

    print(min_graph_color(g))


def is_safe(node, g, color, c):
    """Check if color c can be assigned to node."""
    for neighbor in g[node]:
        if color[neighbor] == c:
            return False
    return True


def cancolor(nodes, idx, m, g, color):
    """Try to color graph with m colors."""
    if idx == len(nodes):
        return True

    node = nodes[idx]
    for c in range(m):
        if is_safe(node, g, color, c):
            color[node] = c
            if cancolor(nodes, idx + 1, m, g, color):
                return True
            color[node] = -1

    return False


def min_graph_color(g):
    nodes = list(g.keys())
    color = {node: -1 for node in nodes}

    # Try 1, 2, 3... colors until successful
    for m in range(1, len(nodes) + 1):
        if cancolor(nodes, 0, m, g, color):
            return m

    return len(nodes)  # worst case


if __name__ == "__main__":
    main()
