var sayilar = HashSet<int>();
var isimler = HashSet.from(["ali","veli"]);
//iki farklı türde kayıt işlemleri olmaktadır.


import 'dart:collection';
void main() {
  var sayilar = HashSet<int>();
  var isimler = HashSet.from(["ali","veli"]);
  var meyveler = HashSet<String>();
  meyveler.add("elma");
  meyveler.add("muz");
  meyveler.add("kivi");
  print(meyveler);
  print(meyveler.elementAt(0)); // burada 0. indexde ne olduğunu bilmiyoruz ama bu fonksiyonu kullnamak mümkün
  print(meyveler.length); //boyutunu verir
  print(meyveler.isEmpty); // hashset boş mu
  print(meyveler.contains("muz")); // burada hashset te muz degiskeni var mi (true - false doner )
  for (var m in meyveler){
    print(m);
  }

  for (var i=0;i<meyveler.length;i++){
    print("$i .index : ${meyveler.elementAt(i)}");
  }

  meyveler.remove("elma"); // elma değişkenini siler
  print(meyveler);
  meyveler.clear();// bütün değişkenleri siler
}

                                                                                //HashSet ile ogrenci sistemi ( aynı no ya ait kayıt etmiyor  )
class ogrenciler {
  late String name;
  late int no;
  late String sinif;
  ogrenciler(this.name,this.no,this.sinif);

  @override
  int get hashCode => this.no;

  @override
  bool operator ==(Object other) {
    if( no == (other as ogrenciler).no){
      return true;
    }else{
      return false;
    }
  }
}
import 'dart:collection';
import 'package:deneme/kisiler.dart';
void main(){
  var o1 = ogrenciler("samet", 12, "1.sinif");
  var o2 = ogrenciler("hakan", 25, "2.sinif");
  var o3 = ogrenciler("selen", 35, "5.sinif");
  var o4 = ogrenciler("zehra", 35, "7.sinif");
  var hset = HashSet<ogrenciler>();
  hset.add(o1);
  hset.add(o2);
  hset.add(o3);
  hset.add(o4);
  for (var h in hset){
    print("${h.no} - ${h.name}  -> ${h.sinif}");
  }
}