import 'dart:io';
import 'package:deneme/Hesapla.dart';

void main(){


  print("hesaplamak istediginiz f girin: ");
  double cel= double.parse(stdin.readLineSync()!);
  var ce= Hesapla();
  ce.fah(cel);

  print("hesaplamak istediginiz kenari girin: ");
  double h= double.parse(stdin.readLineSync()!);
  var area=Hesapla();
  area.alanhesapla(h);

  print("faktoriyelini almak istediginiz sayiyi gir: ");
  int num =int.parse(stdin.readLineSync()!);
  var fac= Hesapla();
  fac.factoriel(num);

  print("kelime gir ");
  String kelime =stdin.readLineSync()!;
  print("harf girin : ");
  String harf= stdin.readLineSync()!;
  var harfbul = Hesapla();
  harfbul.kelimeadet(kelime, harf);


}