Tree oak;


void setup() {
  size(800, 500);

  oak = new Tree(5, width/2, 4);
  oak.display();
  println(oak.inOrder(oak.root));
      println(oak.inOrder(oak.root));
  println(oak.postOrder(oak.root));
}//setup