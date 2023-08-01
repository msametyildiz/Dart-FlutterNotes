

import 'lateKavramiKullanimi.dart';

void main(){

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