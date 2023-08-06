//key value ilişkisi ile çalışır . key ile verilere erisiriz
//    <x,y>  arasında yazılanların  ilki (x) keyin türü ikincisi (y) degişkenin türü
var sayilar = HashMap<int,String>();
var oranlar = HashMap<double, String>();


// HashMap ile verileri eklme ve yazdırma
var iller= HashMap<int ,String>();
iller[06] = "Ankara";
iller[01] = "Adana";
iller[34] = "Istanbul";
iller[16] = "Bursa";
print(iller);

                                                                                //HASHMAP YAPISI VE FONKSİYONLAR
import 'dart:collection';
import 'package:deneme/iller.dart';
void main(){
  var iller= HashMap<int ,String>();
  iller[06] = "Ankara";
  iller[01] = "Adana";
  iller[34] = "Istanbul";
  iller[16] = "Bursa";
  print(iller);         // illeri yazdirmak
  print(iller.length);  // boyut bulma
  print(iller.isEmpty); // dolu mu boş mu bulma

  print(iller.containsKey(06));         // bu keye ait bir kayit var mı
  print(iller.containsValue("Ankara")); // bu value ya ait kayit var mı

  var anahtar = iller.keys;
  for (var a in anahtar){
    print("Sonuc : ${iller[a]}");
  }

  iller.remove(01);     // kayıt silme (key e gore )
  print(iller);

  iller.clear();        // tüm kaydi silme
  print(iller);
}
                                                                                // HASHMAP İLE NESNE TABANLI UYGULAMA

class kisiler {
  late int tcno ;
  late String name;
  kisiler(this.tcno,this.name);
}
import 'dart:collection';
import 'package:deneme/kisiler.dart';
void main(){
  var k1 = kisiler(111111, "samet");
  var k2 = kisiler(222222, "sude");
  var k3 = kisiler(333333, "ece");
  var k4 = kisiler(444444, "elif");
  var kisi = HashMap<int , kisiler>();
  kisi[k1.tcno] = k1;
  kisi[k2.tcno] = k2;
  kisi[k3.tcno] = k3;
  kisi[k4.tcno] = k4;
  var anahtar = kisi.keys;
  for (var a in anahtar){
    var kisiler = kisi[a];
    if(kisiler != null){
      print("${kisiler.tcno} -> ${kisiler.name}");
    }
  }
}