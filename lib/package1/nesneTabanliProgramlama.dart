import 'package:deneme/personel.dart';
import 'package:deneme/Otobus.dart';

void main() {
  /*var bmw =Araba();
  //      DEGER ATAMA
  bmw.hiz=120;
  bmw.renk="kirmizi";
  bmw.calisiyormu=true;
  //      DEGER OKUMA
  print(bmw.renk);
  print(bmw.hiz);
  print(bmw.calisiyormu);

  String renk= bmw.renk;
  print(renk);
  bmw.bilgiAl();

  bmw.durdur();
  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();

  bmw.hizlan(25);
  bmw.bilgiAl();

  bmw.yavasla(5);
  bmw.bilgiAl();
*/


  var halkotobusu= Otobus();
  halkotobusu.sss("Ankara","Karabuk",250,120);
  halkotobusu.bilgiAl();
  halkotobusu.yolcucikar(20);
  halkotobusu.bilgiAl();
  halkotobusu.yolcuekle(100);
  halkotobusu.bilgiAl();
  print(halkotobusu.bilgiver());

}