ArrayList<Slider> slider=new ArrayList<Slider>() ; //contenedor

void setup() {
  size(900, 600);
  for (int i=1; i<=10; i++) {
    Slider nvoSlider=new Slider(50, (i)*50, 200, "Slider "+i);
    slider.add(nvoSlider);
  }
  for (int i=1; i<=10; i++) {
    Slider nvoSlider=new Slider(350, (i)*50, 200, "Slider "+(i+10));
    slider.add(nvoSlider);
  }
}
void draw() {
  background(255);
  for (Slider w : slider) {//(crea objetos) 
    w.display();
  }
}

void mouseDragged() {
  for (Slider w : slider) {
    w.MousePresionado();
  }
}
