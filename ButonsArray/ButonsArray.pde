ArrayList<Button> button=new ArrayList<Button>() ; //contenedor
int n=1;

void setup() {
  size(900, 600);
  for (int j=1; j<=10; j++) {
    for (int i=1; i<=10; i++) {
      Button nvoButton=new Button(75*j, 52*i, "Switch "+n); 
      button.add(nvoButton);
      n++;
    }
  }
}

void draw() {
  background(255);
  for (Button w : button) {//(crea objetos) 
    w.display();
  }
}

void mouseClicked() { 
  for (Button w : button) {//(crea objetos) 
    w.MouseClicked();
  }
}
