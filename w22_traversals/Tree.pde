class Tree {

  TreeNode root;
  PVector position;
  int totalLevels;

  Tree(int numLevels, int x, int y) {
    position = new PVector(x, y);
    totalLevels = numLevels;
    root = makeTree(numLevels, position);
  }//constructor

  TreeNode makeTree(int numLevels, PVector p) {
    if (numLevels == 0) {
      return null;
    }//base case
    else {
      char c = char(int(random(26)) + 'A');
      TreeNode tn = new TreeNode(c, p);

      float xoffset = width / (pow(2, totalLevels - numLevels+2));
      PVector leftP = new PVector(p.x - xoffset, p.y + 75);
      PVector rightP = new PVector(p.x + xoffset, p.y + 75);

//if(int(random(10))>2){
        tn.left = makeTree(numLevels-1, leftP);
//}for not full tree
//if(int(random(10))>2){
        tn.right = makeTree(numLevels-1, rightP);
//}//for not full tree
      return tn;
    }//make more tree!
  }//makeTree
  
String preOrder(TreeNode tn){
if (tn==null){
return "";
}
else{
return tn.data + preOrder(tn.left)+preOrder(tn.right);
}
}
  String inOrder(TreeNode tn){
  if (tn==null){
  return "";
  }
  else{
  return inOrder(tn.left) + tn.data + inOrder(tn.right);
  }
  }
  
    String postOrder(TreeNode tn){
  if (tn==null){
  return "";
  }
  else{
  return  postOrder(tn.left) + postOrder(tn.right) + tn.data ;
  }
  }
  
  void display() {
    display(root);
    
  }//display wrapper
  void display(TreeNode tn) {
    if (tn != null) {
      tn.display();
      display(tn.left);
      display(tn.right);
    }
  }//display

}//Tree
