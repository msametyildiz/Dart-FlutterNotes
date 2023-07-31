import 'dart:math';

class Hesapla  {
  late var sayi;
  void fah(double sayi){
    double result= (sayi*1.8)+32;
    print("The result f: $result");
  }
  void alanhesapla(double a){
    num result = pow(a,2);
    print("The area : $result");
  }
  void factoriel(int num){
    int i=1,result=1;
    while(i<=num){
      result*=i;
      i++;
    }
    print("The number factoriel result is : $result");
  }
  void kelimeadet(String kelime , String harf){
    int i=0,sayac=0;
    for(i=0;i<kelime.length;i++){
      if(kelime[i]==harf){
        sayac++;
       }
     }
    print("$kelime kelimesinde $harf harfi $sayac tane vardir");
  }
}