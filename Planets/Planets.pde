PImage img;
PShape globe;
void setup() {
    size(600, 600, P3D);
    img = loadImage("t_brick_floor_002_Diffuse_1k.jpg");
    noStroke();
    globe = createShape(SPHERE, 250);
    globe.setTexture(img);
}
float ang = 0;

void draw() {
    // This is an example of how to make one rotating sphere.
    // you will need to do something like this for all the planets.
    // Remember to add your textures using Sketch->Add File
    // HINT - even though this example is not, you should 
    //        write this assignment in an object-oriented way,
    //        by creating a class called Planet. What fields do you
    //        think Planet should have?
    background(0);  
    translate(width/2, height/2);  
    rotateY(ang);    
    // HINT - you will need to do multiple rotations, one for the 
    //        animation and one for the axial tilt.
    ang = ang + 0.01;  
    shape(globe);
}  
