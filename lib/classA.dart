import 'package:deneme/classB.dart';
void main(){
  ucretal(UrunBoyut.Orta);   //   output : 900
  ucretal(UrunBoyut.Buyuk);  //   output : 1200

}

void ucretal(UrunBoyut boyut){

  switch(boyut){
    case UrunBoyut.Kucuk:
      print(20*30);
      break;
    case UrunBoyut.Buyuk:
      print(40*30);
      break;
    case UrunBoyut.Orta:
      print(30*30);
      break;
      default:
        break;
  }
}