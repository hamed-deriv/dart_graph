import 'package:dart_graph/dart_graph.dart';

void main(List<String> arguments) {
  // runBreadthFirst();
  // runDepthFirst();
  // runDepthFirstRecursive();
  runHasPath();
}

void runBreadthFirst() {
  Node f = Node(value: 'F', neighbors: []);
  Node e = Node(value: 'E', neighbors: []);
  Node d = Node(value: 'D', neighbors: [f]);
  Node c = Node(value: 'C', neighbors: [e]);
  Node b = Node(value: 'B', neighbors: [d]);
  Node a = Node(value: 'A', neighbors: [b, c]);

  Graph graph = Graph(nodes: [a, b, c, d, e, f]);

  print('Breadth first print:');
  breadthFirst(graph: graph, start: a).listen(print);
}

void runDepthFirst() {
  Node f = Node(value: 'F', neighbors: []);
  Node e = Node(value: 'E', neighbors: []);
  Node d = Node(value: 'D', neighbors: [f]);
  Node c = Node(value: 'C', neighbors: [e]);
  Node b = Node(value: 'B', neighbors: [d]);
  Node a = Node(value: 'A', neighbors: [b, c]);

  Graph graph = Graph(nodes: [a, b, c, d, e, f]);

  print('Depth first print:');
  depthFirst(graph: graph, start: a).listen(print);
}

void runDepthFirstRecursive() {
  Node f = Node(value: 'F', neighbors: []);
  Node e = Node(value: 'E', neighbors: []);
  Node d = Node(value: 'D', neighbors: [f]);
  Node c = Node(value: 'C', neighbors: [e]);
  Node b = Node(value: 'B', neighbors: [d]);
  Node a = Node(value: 'A', neighbors: [b, c]);

  Graph graph = Graph(nodes: [a, b, c, d, e, f]);

  print('Depth first recursive print:');
  depthFirstRecursive(graph: graph, start: a).listen(print);
}

Future<void> runHasPath() async {
  Node f = Node(value: 'F', neighbors: []);
  Node c = Node(value: 'C', neighbors: []);
  Node b = Node(value: 'B', neighbors: [c]);
  Node d = Node(value: 'D', neighbors: [b, f]);
  Node e = Node(value: 'E', neighbors: [d]);
  Node a = Node(value: 'A', neighbors: [b, d]);

  Graph graph = Graph(nodes: [a, b, c, d, e, f]);

  print('Has path:');
  print(hasPath(graph: graph, start: a, end: f));
}
