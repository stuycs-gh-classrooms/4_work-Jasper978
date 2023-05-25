Tree oak;


void setup() {
  size(800, 500);

  oak = new Tree(5, width/2, 4);
  oak.display();
  println("preOrder: " + oak.preOrder(oak.root));
  println("inOrder: " + oak.inOrder(oak.root));
  println("postOrder: " + oak.postOrder(oak.root));
}//setup
