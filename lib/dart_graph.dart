class Graph {
  final List<Node>? nodes;

  Graph({this.nodes});
}

class Node<T> {
  final T value;
  final List<Node<T>> neighbors;

  Node({required this.value, required this.neighbors});
}

void breadthFirstPrint<T>({required Graph graph, required Node<T> start}) {
  final Set<Node<T>> visited = <Node<T>>{};

  visited.add(start);

  while (visited.isNotEmpty) {
    final Node<T> node = visited.first;
    visited.remove(node);

    print(node.value);

    visited.addAll(node.neighbors);
  }
}

void depthFirstPrint<T>({required Graph graph, required Node<T> start}) {
  final Set<Node<T>> visited = <Node<T>>{};

  visited.add(start);

  while (visited.isNotEmpty) {
    final Node<T> node = visited.last;
    visited.remove(node);

    print(node.value);

    visited.addAll(node.neighbors);
  }
}
