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