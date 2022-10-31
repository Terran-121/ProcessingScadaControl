ArrayList<Pot> pot=new ArrayList<Pot>() ; //contenedor
int n=1;

void setup() {
  size(900, 600);
  for (int j=1; j<=8; j++) {
    for (int i=1; i<=5; i++) {
      Pot nvoPot=new Pot(100*j, 100*i, "Pot "+n); 
      pot.add(nvoPot);
      n++;
    }
  }
}

void draw() {
  background(255);
  for (Pot w : pot) {//(crea objetos) 
    w.display();
  }
}

void mouseDragged() { 
  for (Pot w : pot) {//(crea objetos) 
    w.MousePresion();
  }
}
