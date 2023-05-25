class TreeNode {

  TreeNode left;
  TreeNode right;
  char data;

  int size;
  color c;
  PVector position;


  TreeNode(char d, PVector p) {
    data = d;
    position = p;
    size = 25;
    c = color(int(random(255)),int(random(255)),int(random(255)));
  }//constructor

  void display() {
    strokeWeight(2);
    if (left != null) {
      stroke(230, 0, 230);
      line(position.x, position.y, left.position.x, left.position.y);
    }//left line

    if (right != null) {
      stroke(0, 230, 230);
      line(position.x, position.y, right.position.x, right.position.y);
    }//right line

    textAlign(CENTER, CENTER);
    textSize(size - 5);
    fill(c);
    noStroke();
    circle(position.x, position.y, size);
    stroke(0);
    fill(int(random(255)),int(random(255)),int(random(255)));
    text(data, position.x, position.y);
  }//display


}//TreeNode
