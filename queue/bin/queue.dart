import 'package:queue/queue.dart' as queue;

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class queuelinked {
  Node? front;
  Node? rear;
  void enqueue(int data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
      return;
    }
    rear?.next = newNode;
    rear = newNode;
  }

  void dequeue() {
    if (front == null) {
      print("Empty");
      return;
    }
    front = front?.next;
    // if (front == null) {
    //   rear = null;
    // }
  }

  void display() {
    Node? current = front;
    if (current == null) {
      print("List is empty");
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  queuelinked queue = queuelinked();
  queue.enqueue(45);
  queue.enqueue(22);
  queue.enqueue(65);
  queue.enqueue(72);
  queue.enqueue(35);
  queue.enqueue(62);
  queue.dequeue();
  queue.display();
}
