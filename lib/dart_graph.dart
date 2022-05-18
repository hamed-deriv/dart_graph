class Graph {
  final List<Node>? nodes;

  Graph({this.nodes});
}

class Node<T> {
  final T value;
  final List<Node<T>> neighbors;

  Node({required this.value, required this.neighbors});

  @override
  String toString() => '$value';
}

Stream<Node<T>> breadthFirst<T>({
  required Graph graph,
  required Node<T> start,
}) async* {
  final Set<Node<T>> visited = <Node<T>>{};

  visited.add(start);

  while (visited.isNotEmpty) {
    final Node<T> node = visited.first;

    visited.remove(node);
    visited.addAll(node.neighbors);

    yield node;
  }
}

Stream<Node<T>> depthFirst<T>({
  required Graph graph,
  required Node<T> start,
}) async* {
  final Set<Node<T>> visited = <Node<T>>{};

  visited.add(start);

  while (visited.isNotEmpty) {
    final Node<T> node = visited.last;

    visited.remove(node);
    visited.addAll(node.neighbors);

    yield node;
  }
}

Stream<Node<T>> depthFirstRecursive<T>({
  required Graph graph,
  required Node<T> start,
}) async* {
  yield start;

  for (final Node<T> node in start.neighbors) {
    yield* depthFirstRecursive(graph: graph, start: node);
  }
}
