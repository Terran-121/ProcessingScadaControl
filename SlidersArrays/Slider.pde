class Slider {
  int x, y, X;
  int w, r=10;
  float PosX;
  String tex="Slider"; 
  float tw;

  Slider(int x_, int y_, int w_, String tex_) {
    x=x_; 
    y=y_;
    w=w_;
    X=x;
    tex=tex_;
  }

  void display() {
    strokeWeight(2);
    line(x, y, x+w, y);
    fill(0);
    PosX=map(X, x, x+w, 0, 100);
    circle(X, y, r);
    tw=textWidth(tex+ "= "+nf(PosX, 0, 1));
    text(tex+ "= "+nf(PosX, 0, 1), x+(w-tw)/2, y+2*r);
  }

  void MousePresionado() { 
    if (mouseX<=(x+w+r/2) && mouseX>=(x-r/2) && mouseY<=y+r && mouseY>=y-r) {
      X=mouseX;
      if (mouseX>=(x+w))
        X=x+w;
      if (mouseX<=(x))
        X=x;
    }
  }
}
