class Tree{

TreeNode root;
PVector position;
int totalLevels;

Tree(int x, int y, int numLevels){
  int d= int(random(255));
  position = new PVector(x,y);
root= new TreeNode(char(d), position);
totalLevels=numLevels;
}

TreeNode makeTree(int x, int y, int numLevels){
  int d= int(random(255));
  position = new PVector(x,y);
  TreeNode curr;
curr= new TreeNode(char(d), position);
if(numLevels !=0){
return makeTree(x,y,numLevels-1);
}
else {
return null;
}
}



void display(TreeNode current){
  if(current != null){
current.display();
display(current.left);
display(current.right);
}
}

}
