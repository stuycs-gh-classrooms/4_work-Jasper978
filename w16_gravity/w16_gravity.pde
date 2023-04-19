Orb a;
Orb b;

void setup(){
size (400,400);
a= new Orb(100,200,50,5);
b= new Orb(300,200,50,5);
}

void draw(){
background (255);
a.display();
b.display();

a.getGravity(b,10);
b.getGravity(a,10);

a.applyForce(a.getGravity(a,10));
b.applyForce(b.getGravity(b,10));

}
