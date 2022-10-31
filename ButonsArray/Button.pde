class Button {
  int X, Y, x, y, w, h;
  boolean estaSobre=false; 
  boolean conectado=false;
  String tex="Switch"; 
  PImage SwitchStop;
  PImage SwitchStar;
  float tw;

  Button(int x_, int y_, String tex_) {
    x=x_; 
    y=y_; 
    tex=tex_;  
    SwitchStop = loadImage("SwitchStop.png");
    SwitchStar = loadImage("SwitchStart.png");
    w=SwitchStar.width;
    h=SwitchStar.height;
  }


  void display() {
    fill(0);
    if (conectado) { // desconectar          
      image(SwitchStar, x, y);
    } else {        // conectar    
      image(SwitchStop, x, y);
    }

    tw=textWidth(tex);
    text(tex, x+(w-tw)/2, y-3);
    X=mouseX;
    Y=mouseY;
    if ( X>x && X<x+w && Y>y && Y<y+h) {
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

  void MouseClicked() { 
    if (Y>y && Y<y+h && X>x && X<x+w) {
      conectado=!conectado;
      display();
      println(conectado );
    }
  }
}
