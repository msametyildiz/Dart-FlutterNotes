import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main(){
  var name="samet";
  var age =22;
  var lengh=186.5;
  var firstname="M";


  print("name= $name"+"age : $age"+"lengh : $lengh"+" first name : $firstname");


  //      PRİNT METHOD
  var ad="samet";
  var yas=22;
  int yil=2023;
  print ("${yas+yil}");
  print("$ad kisisi $yas yasindadir");
  yas=23;
  print("$yas");
  var toplam=yas+yil;
  print(toplam);


        CONSTANT  ( SABİTLER ) degismesini istemedigimiz degiskenlerde kullanılır
   const  =   hafızada hemen yer olusturur
   final  =   kod calisirken hafızada yer olusturur
   final daha cok kullanilir cunku memory yonetimi daha kolyadir
  final pi=3.14;
  final String mesaj="merhaba ";
  const num=22;
  const String message ="slm";
  const double num2= 2.02;


  //    KAÇIŞ KARAKTERLERİ

  \\  isareti \ anlamina gelir
  \t  isareti bir tab bosluk birakir
  \n  isareti bir alt satira gecer
  \"  isareti cift tirnak anlamina gelir
  \'  isareti tek tirnak anlamina gelir

   var yazi="Merhaba bu \"flutter\" yazisidir \n\t bu egitim \\dart\\ dilindedir ";
  print("$yazi");



  //          ARİTMATİK OPERATÖRLER
  final pi =3.14;
  var r=3.0;
  var sonuc= pi*r*r;
  print("$sonuc");

  //       ---------------------------   TÜR DÖNÜŞÜMÜ     ------------------------------------------------------
  1- ) Sayılardan sayıya donusum
  2- ) Sayılardan metine donusum
  3- ) Metinden sayilara donusum

  toDouble() , toInt() , toStirng() , int.parse() , double.parse();

  //Sayılardan sayıya donusum
  int i=42;
  double d=42.5;

  int newi=d.toInt();
  double newd=i.toDouble();
  print(newi);
  print(newd);

 //  Sayılardan metine donusum
  String newtext = i.toString();
  String newtext2 = d.toString();
  print(newtext);
  print(newtext2);

  // Metinden sayilara donusum

  String str = "34";
  String str2 = "34.56";
  int num = int.parse(str);
  double num2 = double.parse(str2);
  print("new number : $num ");
  print("new number 2 : $num2 ");



  // konsol girdisi yapma
  stdin.readLineSync()! ifadesi string değeri almaktadır .

  print("adinizi girin : ");
  String name = stdin.readLineSync()!;
  print("yas gir : ");
  int num = int.parse(stdin.readLineSync()!);
  print("boy gir : ");
  double num2 = double.parse(stdin.readLineSync()!);
  print("adiniz : $name yasiniz : $num boyunuz : $num2");
  print("toplam ${num+num2}");



  //   --------------------------- KARŞILAŞTIRMA OPERATÖRLERİ---------------------------
  print("enter first num :");
  int num1 = int.parse(stdin.readLineSync()!);
  print("enter second number : ");
  double num2 = double.parse(stdin.readLineSync()!);

  double total = num1+num2;
  if(total>=50 && num1==12){
    print("passed");
  }
  else if(total==30){
    print("nice");
  }
  print(num1 == num2);
  print(num1 != num2);

  print(total >=50 || total <75);
  print(num1 <50 && num2 == 20);


  //        SWİTCH -CASE
  print("enter number : (1-3)");
  int num = int.parse(stdin.readLineSync()!);
  switch(num){
    case 1:
      print("num 1");
      break;
    case 2:
      print("num 2");
      break;
    case 3:
      print("num 3");
      break;
    default :
      print("bro wronge !! ");
      break;
  }
  print("lutfen bir secenek sec\n1-toplama\n2-carpma\n3-cıkarma\n4-bolme\n");
  int choose= int.parse(stdin.readLineSync()!);
  print("lutfen ilk sayiyi gir : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("lutfen ikinci sayiyi gir : ");
  int num2 = int.parse(stdin.readLineSync()!);
  int result;
  switch(choose){
    case 1:
      result = num1+num2;
      print("The result is : $result");
      break;
    case 2:
      result = num1*num2;
      print("The result is : $result");
      break;
    case 3:
      result = num1-num2;
      print("The result is : $result");
      break;
    case 4:
      result = num1%num2;
      print("The result is : $result");
      break;
    default:
      print("wronge choose");
      break;

  }


    //      DONGULER    for dongusu
  int total=0;
  for (int i=0; i<10; i++){
    total+=i;
  }
  print("total : $total");
  total=0;
  for (var j=0; j<=10; j++){
    total+=j;
  }
  print("total : $total \n\n");

  var dizi=[10,20,30];
  total=0;
  for (var deger in dizi){
    total +=deger;
  }
print("total : $total");


  //    donguler while
  var i=0,total=0;
  while (i<10){
    total+=i;
    i++;
    if(i==5){
      continue;
    }
    else if(i==7){
      break;
    }
    else{
      print("sayac : $i");
    }
  }
  print("total : $total");



  //      RASTGELE SAYI ÜRETMEK
  int min=5;
  int max=10;
  var r = Random();
  int rastgele = min + r.nextInt((max-min)+1) ;  //  rastgele sayı üretme formülü
  print("rastge sayi $rastgele");
  var i=0,total=0;
  while(i<100){
    int rastgele = min + r.nextInt((max-min)+1) ;  //  rastgele sayı üretme formülü
    print("rastge sayi $rastgele");
    total+=rastgele;
    i++;
  }
  print("total number : $total");


  //            DOUBLE'LARDA YUVARLAMA İŞLEMİ

  double num=25.5;
  int c= num.ceil();
  print("new ceil number : $c");
  int f=num.floor();
  print("new floor number : $f");

  //              KAREKÖK İŞLEMİ YAPMA
  double s= sqrt(num);
  print("new square number : $s");

  //              MUTLAK DEĞER ALMA
  int i=-10;
  int mutlak = i.abs();
  print("mutlak degerli hali : $mutlak");

  //              ÜSLÜ SAYI ALMA
  num uslu = pow(2,3);  // buradaki num olması gereken bir addir kendimizin atadigi bir sey degil
  print("uslu sayi : $uslu");

  //     -------------------------------------- NULL SAFTY ------------------------------------------------------
  String? message = null; //bu degisken null olabilir demek
  message="Merhaba Dünya ";

  String? name  =null;

  //              YÖNTEMLER
  //                                 Yöntem 1   ?

  // print("Sonuc 1: ${name.toUpperCase()}");// burada uyarı alabiliriz bunun sebebi nullsafety özelliği
  print("Sonuc 1: ${name?.toUpperCase()}");   // burada hata alamayiz bunun sebebi ? dir
  print("Sonuc 2 : ${message?.toLowerCase()}");

//                                   YÖNTEM 2   !

  print ("Sonuc 3: ${name!.toUpperCase()}"); // burada ! koyarak kodlamada null degeri alan degisken varsa program çöksün diyoruz
  //                                            eğer null değeri yoksa çalışması normal olacaktır .

//                                   YÖNTEM 3    if kontrol

  if (name!=null){
  print("Sonuc : ${name.toUpperCase()}");
  }
  else {
  print("name is null . transaction failed ");
  }



}


//    --------------------------------------LATE KULLANIMI -----------------------------------------------------------------------------

class lateKullanimi{
  /* late kullandığımda bellekten hemen yer ayırmaz örnek olarak late int x dersek x değişkenine bir şey atadığımda bellekten yer ayırır .
      ve classlar içerisinde çalışır .

    int x; // bu şekilde bir tanımlama yapamıyorum
      */

  late int x;


}
class kisiler {
  int kisi_no;
  String kisi_adi;
  // eğer bir classin constructor i yok ise late kavarmı kullanılır var ise gerekli değil
  kisiler(this.kisi_no, this.kisi_adi);
}

// ---------------------------------------------CONSRUCTOR KULLANIMI -----------------------------------------------------------------------------

class constuctor{
  String name ;
  int age;
  // 1. yazım    constuctor(this.name , this.yas);
  // 2. yazım
  constuctor({required this.name,required this.age});// burada ise her iki tarafında zorunlu doldurulması gereken bir yer olduğunu belirttim.

}

main kısımı ;

1.yazımda
var nesne = constuctor("samet",22);
print("ad :  ${nesne.name} \nyas : ${nesne.age}");

2.yazımda
var nesne = constuctor(name:"samet",age:22);
print("ad :  ${nesne.name} \nyas : ${nesne.age}");



// ---------------------------------------------PUBLIC and PRIVATE KULLANIMI -----------------------------------------------------------------------------

class a{
  late int publicDegisken;
  late int _privateDegisken;
}


var nesne = a();
nesne.publicDegisken=22;//  burada hata alinmaz
nesne.priveteDegisken=23;// burada degisken private oldugundan dolayı hata alınır



// ---------------------------------------------  STATİC  KULLANIMI -----------------------------------------------------------------------------

class deneme2{
  static int sayi=10;
  static void method(){
  print("merhaba");
  }
}
deneme2.sayi=20; // static değerini değitirme yapabiliriz
print(deneme2.sayi);// static değişkenlere nesne olmadan direkt sınıfın kendisiyle ulaşım sağlayabiliriz .
// hızlı ulaşmak istediğimiz değerlere static verebiliriz. ama bu durum programın performansını olumsuz olarak etkileyebilir.


// ---------------------------------------------  ENUMERATİON (enum )  KULLANIMI -----------------------------------------------------------------------------

enum UrunBoyut{
Kucuk,Orta,Buyuk
}


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


// ---------------------------------------------  COMPOSİTİON  KULLANIMI -----------------------------------------------------------------------------
//burada iki farklı bir class kullanarak yapıyoruz.

class persons{
  late String name;
  late int age;
  late address adres;

  persons(this.name,this.adres,this.age);
}
class address{
  late String city;
  late String town;

  address(this.city,this.town);
}
void main(){
  var adres=address("Ankara","Altindag");
  var kisi=persons("samet",adres, 22);
  print("${kisi.name} ${kisi.age} ${kisi.adres.city} ${kisi.adres.town}");
}
//burada persons classının altında address classı var oradan onlara erisim saglayabiliriz

                      ORNEK 2
class yonetmenler{
  late int yonetmen_id;
  late String yonetmen_adi;
  yonetmenler(this.yonetmen_adi,this.yonetmen_id);
}
class kategoriler{
  late int kategori_id;
  late String kategori_adi;
  kategoriler(this.kategori_adi,this.kategori_id);
}
class filmler{
  late int film_id;
  late String film_adi;
  late int film_yili;
  late kategoriler kategori;
  late yonetmenler yonetmen;
  filmler(this.film_adi,this.film_id,this.film_yili,this.kategori,this.yonetmen);
}
void main(){
  var yonetmen1=yonetmenler("Nuri Bilge Ceylan",1 );
  var yonetmen2=yonetmenler("Quetin Tarantino",2 );
  var kategor1=kategoriler("Dram",1);
  var kategor2=kategoriler("Komedi",2);
  var filmtablosu1=filmler("Django",1,2013,kategor1,yonetmen2);
  print("film id : ${filmtablosu1.film_id}");
  print("film adi : ${filmtablosu1.film_adi}");
  print("film yili : ${filmtablosu1.film_yili}");
  print("kategori id : ${filmtablosu1.kategori.kategori_adi}");
  print("yonetmen id : ${filmtablosu1.yonetmen.yonetmen_adi}");
}




// ---------------------------------------------  Inheritance (kalıtım)  KULLANIMI -----------------------------------------------------------------------------


// kalıtım bir önceki sınıftan türetilir. bir üst sınıfa supeclass alt sınafa subclass denir
class arac{
  late String renk;
  late String vites;
  arac(this.renk,this.vites);
}
class araba extends arac{
  late String kasatipi;
  araba(this.kasatipi,super.renk, super.vites);//  araba(this.kasatipi,String renk,String  vites):super(renk,vites);    bu diğer bir yazım türüdür
}
class nissan extends araba{
  late String model;
  nissan(this.model,super.kasatipi,super.renk,super.vites);
}
void main(){
  var nissan1=nissan("2023", "sedan", "mavi", "manuel");
  print("Bilgiler : ");
  print("model: ${nissan1.model}");
  print("kasa tipi: ${nissan1.kasatipi}");
  print("renk : ${nissan1.renk}");
  print("vites: ${nissan1.vites}");
}


// ---------------------------------------------  Override (Overriding) KULLANIMI -----------------------------------------------------------------------------

// kalıtım ilişkisinin üst sınıfın methodunu alt sınıftan tekrar kullanma yetisi
class hayvan{
  void sescikar(){
  print("ses yok ");
  }
}
class memeli extends hayvan{
}
class kopek extends memeli{
  @override
  void sescikar(){
  print("hav hav");
  }
}
class kedi extends memeli{
  @override
  void sescikar(){
  print("miyav miyav");
  }
}
void main(){
  var hayvan1=hayvan();
  hayvan1.sescikar();
  var memeli1=memeli();
  memeli1.sescikar();
  var kedi1=kedi();
  kedi1.sescikar();
  var kopek1=kopek();
  kopek1.sescikar();
}
//output = ses yok - ses yok - miyav miyav - hav hav

// ---------------------------------------------  PolyMorphism  KULLANIMI -----------------------------------------------------------------------------

class personel{
  void isealindi(){
    print("personel mutlu");
  }
}
class mudur extends personel{
  void iseal(personel p){
    p.isealindi();
  }
  void terfiettir(personel p){
    (p as ogretmen).maasarttir();
  }
}
class isci extends personel{
  void maasarttir(){
   print("maas arttı isci mutlu");
  }
}
void main(){
  personel isci1= isci();
  personel ogretmen1=ogretmen();
  var mudur1=mudur();
  mudur1.iseal(isci1);
  mudur1.terfiettir(ogretmen1);
  mudur1.terfiettir(isci1);// burada hata verecektir cunku isci ogretmen sınıfına donusmez
}

// ---------------------------------------------  Tip	Kontrolü	- is   -----------------------------------------------------------------------------

//Tip	kontrolü is	ile	yapılabilir.is	true false şeklinde	bilgi	verir
//burada ogr bir ogretmen mi diye sorgu alır true yada false degeri dondurur.
void main(){
  var ogr=ogretmen();
  if(ogr is ogretmen){
    print("ogretmen");
  }
  else{
    print("ogretmen degil");
  }
}

// ---------------------------------------------  Downcasting – UpCasting -----------------------------------------------------------------------------




class ev { }
class saray extends ev{ }
class villa extends ev{ }

//Upcasting : (saray bir evdir )
var saray1=saray();
ev ev1=saray();

//Downcasting – as : ( ev bir villa mıdır ? )
var ev1=ev();
saray saray1=ev as saray;


// ----------------------------- PolyMorphism Casting Hatası	Önleme Tip	Kontrolü	is --------------------------------------------


// ---------------------------------------------  Interface Kullanımı   -----------------------------------------------------------------------------
//bir sınıfa birden fazla interface verebiliriz
abstract class interface1{
  late int degisken;
  void method1();
  String method2();
}
class classA implements interface1{
  @override
  late int degisken=10;
  @override
  void method1(){
    print("interface merhaba");
  }
  @override
  String method2(){
    return "interface calismasi";
  }
}
void main(){
  var a = classA();
  print(a.degisken);
  a.method1();
  print(a.method2());
}

// ---------------------------------------------  Collection Kullanımı   -----------------------------------------------------------------------------
// 1-List (aynı türden verileri bir arada tutmaya yarar - düzenli)
// 2-HashSet (aynı türden veriyi kaydetmez- düzen yok)
// 3-HashMap
// ---------------------------------------------  List Kullanımı   -----------------------------------------------------------------------------

//          1-LIST
//  2 çeşit tanımlanma vardır.
// var meyveler = <String>[];
// var plakalar = [06,02,12,50];

                                                                                                        // Listeye ekleme ve okuma işlemleri

  var meyveler = <String>[];
  meyveler.add("elma");
  meyveler.add("muz");
  meyveler.add("cilek");
  meyveler.add("kivi");
  meyveler.add("karpuz");
  print(meyveler.isEmpty);  // liste boş mu sorusu
  print(meyveler.length);   // listenin boyutunu verir
  print(meyveler.first);    // listenin ilk elemanını verir
  print(meyveler.last);     // listenin son elemanini verir
  print(meyveler.contains("elma"));     // listenin icerisinde elma adında bir degisken var mı
  print(meyveler.reversed); // listeyi tersten yazdırma
  var liste = meyveler.reversed.toList();
  print(liste);             // buda listelemenin başka bir yolu

  meyveler.sort();          // burada listeyi sıralar (harfsel bir sıralama yapar)
  print(meyveler);

  meyveler.remove("muz");   // lsiteden değişken silme
  print(meyveler);
  meyveler.removeAt(2);     // 2. indexi silecektir
  print(meyveler);
  meyveler.clear();         // listeyi sıfırlama (listenin bütün elemanlarini siler );
  print(meyveler);
                                                                                                      // list leri listeleme islemleri
  for (var m in meyveler){
    print(m); // print("sonuc : $m");
  }
  for(var i=0;i<meyveler.length;i++){
    print("${i+1} . index ${meyveler[i]}");
  }
                                                                                                      // LİST İLE NESNE TABANLI ÇALIŞMA
  void main(){
  var o1 =ogrenciler("samet", 123, "3.sinif");
  var o2=ogrenciler("ali", 129, "3.sinif");
  var o3=ogrenciler("Zeliha",135, "4.sinif");
  var ogrenci = <ogrenciler>[];
  ogrenci.add(o1);
  ogrenci.add(o2);
  ogrenci.add(o3);
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
    }
  }

  class ogrenciler{
    late int no;
    late String name;
    late String sinif;
    ogrenciler(this.name,this.no,this.sinif);
  }
                                                                                                      // LISTLERDE SIRALAMA İSLEMLERİ
//BU İŞLEMDE Comparable sınıfını kullanacağım compareTo
  print("_____________ogrencileri no ya gore kücükten büyüğe sıralar_____________________");
  Comparator<ogrenciler>siralama1 = (x,y) => x.no.compareTo(y.no);
  ogrenci.sort(siralama1);
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
  }
  print("_____________ogrencileri no ya gore büyükten kücüğe sıralar_____________________");
  Comparator<ogrenciler>siralama2 = (y,x) => x.no.compareTo(y.no);
  ogrenci.sort(siralama2);
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
  }
  print("_____________ogrencileri name e gore kücükten büyüğe sıralar_____________________");
  Comparator<ogrenciler>siralama3 = (x,y) => x.name.compareTo(y.name);
  ogrenci.sort(siralama3);
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
  }
  print("_____________ogrencileri name e gore büyükten kücüğe sıralar_____________________");
  Comparator<ogrenciler>siralama4 = (y,x) => x.name.compareTo(y.name);
  ogrenci.sort(siralama4);
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
  }
                                                                                                  // LISTLERDE FİLTRELEME İSLEMLERİ
//BU İŞLEMDE Iterable sınıfını kullanacağım
  Iterable<ogrenciler>filtrelenList = ogrenci.where((ogr) {
    return ogr.no>125;  // ogrenci.no su 100 den büyük olanları filtreler
    return ogr.name.contains("e");   // bu ifade ise namein içerisinde e hari olanları filtreler
});
  ogrenci = filtrelenList.toList();
  //filtrelenen sonucu listeye aktarma  toList fonk listeye dönüştür demek
  for (var o in ogrenci){
    print("no : ${o.no}\tname : ${o.name}\t sinif : ${o.sinif} ");
  }
                                                                                                 // LİSTELERDE ORT HESAPLAMA
  var liste =<int>[];
  liste.add(50);
  liste.add(10);
  liste.add(80);
  liste.add(60);
  liste.add(40);
  var toplam =0;
  for(var l in liste){
  toplam+=l;
  }
  print("sonuc : ${toplam/liste.length}");
                                                                                                 // LiSTELERDE İÇERİK DEĞİŞTİRME
  for (var i=0; i<liste.length;i++){
    liste[i]=liste[i]*2;
  }
  for (var l in liste){
    print(l);
  }

                                                                                                  // LiSTELERDE TEK VE ÇİFT DEĞİŞKENLERİ BULMA
  var liste =<int>[];
  liste.add(5);
  liste.add(10);
  liste.add(8);
  liste.add(60);
  liste.add(41);
  var cift= <int>[];
  var tek = <int>[];
  for (var l in liste){
    if(l%2==0){
     cift.add(l);}
    else{
      tek.add(l);
    }
  }
  print("Cift sayilar : ");
  for (var c in cift){
    print(c);
  }
  print("Tek sayilar : ");
  for( var t in tek){
    print(t);
  }
                                                                                                      // RASTGELE SAYI ÜRETME
  import 'dart:math';
  var liste=<int>[];
  var r =Random();
  var i=0;
  while(i<10){
    liste.add(r.nextInt(100));
    i++;
  }
  liste.sort(); // küçükten büyüğe sıralama
  for (var l in liste){
    print(l);
  }

                                                                                                        // LİSTELERDE STRİNG İFADE ARAMA
  var liste = <String>[];
  liste.add("samet");
  liste.add("ali");
  liste.add("veli");
  liste.add("zeynep");
  liste.add("nur");
  print("arama icin isim giriniz ");
  String arama= stdin.readLineSync()!;
  for (var l in liste){
  if(l==arama){
    print("isim mevcut");
    break;
    }
  }

// ---------------------------------------------  HashSet kullanımı    -----------------------------------------------------------------------------
// içerisine eklenen veriler düzensiz bir şekilde kayıt edilir
// aynı veriden tekrar kayıt edilmez

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


// ---------------------------------------------  HashMap kullanimi   -----------------------------------------------------------------------------

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




















