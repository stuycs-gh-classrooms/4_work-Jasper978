Tree oak;


void setup() {
  size(800, 500);

  oak = new Tree(6, width/2, 50);
  oak.display();
  println("preOrder: " + oak.preOrder(oak.root));
  println("inOrder: " + oak.inOrder(oak.root));
  println("postOrder: " + oak.postOrder(oak.root));
  println(oak.numNodes(oak.root));
}//setup
