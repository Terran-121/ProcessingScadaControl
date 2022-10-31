class Pot {
  float X_, Y_;
  float a=-PI, d, ang=0.0;
  int X, Y, x, y, H, W, h, w;
  String tex="Pot";
  float tw;
  PImage PotStatic;
  PImage PotDinamic;
  boolean estaSobre=false; 
  boolean conectado=false;

  Pot(int x_, int y_, String tex_) {
    x=x_; 
    y=y_;
    tex=tex_;
    PotStatic = loadImage("PotStatic.png");
    PotDinamic = loadImage("PotDinamic.png");
    W=PotStatic.width;
    H=PotStatic.height;
    w=PotDinamic.width;
    h=PotDinamic.height;
  }
  void display() {
    image(PotStatic, x-W/2, y-H/2);
    X=mouseX-x;
    Y=mouseY-y;  
    X_=W/2*cos(a)+x;
    Y_=W/2*sin(a)+y;
    image(PotDinamic, X_-w/2, Y_-h/2);
    d=sqrt(pow(abs(X), 2)+pow(abs(Y), 2));
    fill(0);
    textSize(12); 
    tw=textWidth(nf(ang, 0, 1));
    text(nf(ang, 0, 1), x-tw/2, y);
    tw=textWidth(tex);
    text(tex, x-tw/2, y+15);

    if (d<=(W/2+w/2) && d>=(W/2-w/2) ) {
      if (estaSobre==false) {
        cursor(HAND);
        estaSobre=true;
      }
    } else {
      if (estaSobre) {
        cursor(ARROW);
        estaSobre=false;
      }
    }
  }

  void MousePresion() { 
    if (d<=(W/2+w/2) && d>=(W/2-w/2) ) {
      image(PotDinamic, X_-w/2, Y_-h/2);
      a= atan2(Y, X);
      ang=a+PI;
      ang=map(ang, 0, 2*PI, 0, 100);

      if (estaSobre==false) {
        cursor(HAND);
        estaSobre=true;
      }
    } else {
      if (estaSobre) {
        cursor(ARROW);
        estaSobre=false;
      }
    }
  }
}
