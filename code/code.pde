

int xBroom=400;
int xHarry=160;
Veicolo broom;
Personaggio harry;


class Veicolo {
  PShape broom;
  Veicolo(String filenameBroom) {
    broom=loadShape(filenameBroom);
    broom.setFill(color(#39200B));
  }
  void disegnaBroom(int x, int y) {
    shape(broom, xBroom, y);
  }
}
class Personaggio {
  PShape harry;
  Personaggio(String filenameHarry) {
    harry=loadShape(filenameHarry);
    harry.setFill(color(#050000));
  }
  void disegna(int x, int y) {
    shape(harry, x, y);
  }
}

void setup() {
  fullScreen(P3D);
  harry=new Personaggio("harry.obj");
  broom=new Veicolo("broom.obj");
}

void draw() {
  background(#7AFF5D);
  lights();
  harry.disegnaHarry(height*0.1, width*0.5 );
  broom.disegnaBroom(height*0.9, width*0.5);
}
