                                                                                //STRİNG İFADELERİ TANIMMI
String str = "Merhaba";
String str2 = """ 
    merhaba
    dunya
  """;
int a=5,b=4;
String str3 = "$a * $b = ${a*b}";

String str4 = "Merhaba";
String str5 = "Merhaba";
if(str4 == str5){
print("$str4 ve $str5 esittir .");
}else{
print("$str4 ve $str5 esit degildir .");
}
                                                                                //  STRİNG İFADELERDE METHODLAR
  substring(0,3)
  isempty
  length
  contains("a")
  toLowerCase()
  toLowerCase()
  split(" ")
  trim()

  String str = "Merhaba";
  print(str.substring(0,3)); // ilk 3 indexi yazar "Mer"

  if(str.contains("x")){ // str x içeriyor mu      str.contains("aba") str aba içeriyor mu olur.
    print("içeriyor");
  }else{
    print("icermiyor");
  }

  print(str.toUpperCase());  // tüm harfleri büyük yazar
  print(str.toLowerCase());  // tüm harfleri küçük yazar

  String str2 = "Merhaba Dunya Nasilsin";
  var liste = str2.split(" "); // boşluk gördügü zaman oraya kadar olan kısmı listenin elemanına atar
  //str2.split("a"); olsa idi a ya kadar olan kisimlari eleman yapar idi
  for(var l in liste){
    print(l);
    print(l);
  }

  String str3 = " Merhaba "; // burada kullanıcıdan veri de alabilirdik
  print(str3);               //  Merhaba
  print(str3.trim());        // Merhaba    // kullanıcı başına ve sonuna boşluk bırakırsa o boşlukları silmeye yarar

  print("$str3 boyutu : ${str3.length}");       // boyutu 9
  print("$str3 boyutu : ${str3.trim().length}");// boyutu 7 çünlü boşluklar silinmiş hali

  print(str3.isEmpty);  // ifade boş mu dolu mu

//  KLAVYEDEN GİRİLEN STRİNG BİR İFADEYİ TERS YAZDIRMA

  import 'dart:io';
  void main(){
  print("kelime giriniz .");
  String kelime = stdin.readLineSync()!;

  String terskelime="";
  for( var i=kelime.length-1;i>-1;i--){
    terskelime+=kelime[i];
  }
  print(terskelime);
  }