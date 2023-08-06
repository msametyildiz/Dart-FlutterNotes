

                                                                                //listeleri kullanarak okul kayıt sistemi yapma (siralama islemi var )
class ogrenciler {
  late int no ;
  late String name;
  late String sinif;
  ogrenciler(this.no,this.name,this.sinif);
}
import 'dart:io';
import 'package:deneme/kisiler.dart';
void main(){
  var okul = <ogrenciler>[];
  var o1 = ogrenciler(2, "samet", "2.sinif");
  var o2 = ogrenciler(54 , "ece" , "4. sinif");
  var o3 = ogrenciler(23, "ziya", "1.sinif");
  okul.add(o1);
  okul.add(o2);
  okul.add(o3);
  Comparator<ogrenciler>sirala=(x,y) => x.no.compareTo(y.no);
  okul.sort(sirala);
  for (var o in okul){
    print("okul no : ${o.no}\t ogrenci adi : ${o.name}\t ogrenci sinifi : ${o.sinif}");
  }
}
                                                                                //listeleri kullanarak okul kayıt sistemi yapma
                                                                                // ( kullanicidan bilgileri alma siralama ve random sayi verme )
  class ogrenciler {
    late int no ;
    late String name;
    late String sinif;
    ogrenciler(this.no,this.name,this.sinif);
  }
  import 'dart:io';
  import 'dart:math';
  import 'package:deneme/kisiler.dart';
  void main(){
    var okul = <ogrenciler>[];
    var r=Random();
    while(true){
      print("ogrenci adini giriniz : ");
      String name = stdin.readLineSync()!;
      print("ogrenci sinifini giriniz : ");
      String sinif = stdin.readLineSync()!;
      var count = r.nextInt(100);
      var newogrenci = ogrenciler(count, name, sinif);
      okul.add(newogrenci);
      print("Cıkış Yapmak İçin (1) - Devam etmek için diğer sayılar");
      late int cikis = int.parse(stdin.readLineSync()!);
      if(cikis==1){
        Comparator<ogrenciler>sirala=(x,y)=>x.no.compareTo(y.no);
        okul.sort(sirala);
        for (var o in okul){
          print("okul no : ${o.no}\t ogrenci adi : ${o.name}\t ogrenci sinifi : ${o.sinif}");
        }
        print("Çıkış Yapıldı");
        break;
      }
    }
  }
                                                                                // listelerde random sayi üretme - sıralama yapma karne uygulaması
  class ogrenciler {
    late int no ;
    late String name;
    late double ort;
    late int vizen;
    late int finaln;
    late String durum ;
    ogrenciler(this.no,this.name,this.vizen,this.finaln);
  }
  import 'dart:io';
  import 'dart:math';
  import 'package:deneme/kisiler.dart';
  void main(){
    var okul=<ogrenciler>[];
    while(true){
      print("öğrencinin adini girin : ");
      var name = stdin.readLineSync()!;
      print("öğrencinin vize sınavi notunu girin : ");
      var vizen = int.parse(stdin.readLineSync()!);
      print("öğrencinin final sınavi notunu girin : ");
      var finaln = int.parse(stdin.readLineSync()!);
      var r = Random();
      var no =r.nextInt(100);
      var ogrenci = ogrenciler(no, name,vizen, finaln);
      okul.add(ogrenci);
      ogrenci.ort= (vizen*0.4)+(finaln*0.6);
      if(ogrenci.ort>=35){
        ogrenci.durum="gecti";
      }
      else{
        ogrenci.durum="kaldi";
      }
      print("Çıkmak İçin (1) - devam etmek için diğer sayılar ");
      late int cikis= int.parse(stdin.readLineSync()!);
      if(cikis==1){
        Comparator<ogrenciler>sirala=(y,x)=>x.ort.compareTo(y.ort);
        okul.sort(sirala);
        for (var o in okul){
          print("${o.no} -> ${o.name}  -  ${o.ort}      SONUÇ : ${o.durum}");
        }
        print("Çıkış Yapıldı ...");
        break;
      }
    }
  }
                                                                                // Composition ile perrsonel sistemi yapma
                                                                                //siralama random sayi üretme composition var
  class adress{
    late String il;
    late String ilce;
    adress(this.il,this.ilce);
  }
  import 'package:deneme/adress.dart';
  class personel{
    late int id;
    late String name ;
    late adress adres;
    personel(this.name,this.adres);
  }
  import 'dart:io';
  import 'dart:math';
  import 'package:deneme/adress.dart';
  import 'package:deneme/personel.dart';
  void main(){
    var company = <personel>[];
    while (true){
      print("personel adi giriniz : ");
      var name = stdin.readLineSync()!;
      print("personel adresi bilgileri. ");
      print("personel yasadigi ili girin");
      var il = stdin.readLineSync()!;
      print("personelin yasadigi ilce girin :");
      var ilce =stdin.readLineSync()!;
      var adr = adress(il, ilce);
      var calisan = personel(name, adr);
      var r= Random();
      calisan.id=r.nextInt(100);
      company.add(calisan);
      print("çıkış yapmak için (1) - personel eklemek için diger sayilar");
      var cikis = int.parse(stdin.readLineSync()!);
      if(cikis == 1){
        Comparator<personel>sirala=(x,y)=>x.id.compareTo(y.id);
        company.sort(sirala);
        for(var c in company){
          print("${c.id} - ${c.name}    ->   ${c.adres.il} , ${c.adres.ilce}");
        }
        print("çikis yapıldı ");
        break;
      }
    }
  }