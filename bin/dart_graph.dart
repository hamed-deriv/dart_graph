import 'package:dart_graph/dart_graph.dart';

void main(List<String> arguments) {
  print('\nBreadth first print:');
  breadthFirst(graph: graph, start: a).listen(print);

  print('Depth first print:');
  depthFirst(graph: graph, start: a).listen(print);
}

Node a = Node(value: 'A', neighbors: [b, c]);
Node b = Node(value: 'B', neighbors: [d]);
Node c = Node(value: 'C', neighbors: [e]);
Node d = Node(value: 'D', neighbors: [f]);
Node e = Node(value: 'E', neighbors: []);
Node f = Node(value: 'F', neighbors: []);

Graph graph = Graph(nodes: [a, b, c, d, e, f]);
