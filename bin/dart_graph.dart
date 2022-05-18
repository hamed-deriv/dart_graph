import 'package:dart_graph/dart_graph.dart';

void main(List<String> arguments) {
  // runBreadthFirst();
  // runDepthFirst();
  // runDepthFirstRecursive();
}

void runBreadthFirst() {
  Node f = Node(value: 'F', neighbors: []);
  Node e = Node(value: 'E', neighbors: []);
  Node d = Node(value: 'D', neighbors: [f]);
  Node c = Node(value: 'C', neighbors: [e]);
  Node b = Node(value: 'B', neighbors: [d]);
  Node a = Node(value: 'A', neighbors: [b, c]);

  Graph graph = Graph(nodes: [a, b, c, d, e, f]);

  print('\nBreadth first print:');
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

  print('\nDepth first print:');
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

  print('\nDepth first recursive print:');
  depthFirstRecursive(graph: graph, start: a).listen(print);
}
