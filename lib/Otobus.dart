class Otobus {
  late String nereden;
  late String nereye ;
  late int kapasite;
  late int mevcutyolcu;

    void sss(String neraden, String nereye, int kapasite , int mevcutyolcu ){
    this.kapasite=kapasite;
    this.mevcutyolcu=mevcutyolcu;
    this.nereden=neraden;
    this.nereye=nereye;
  }
  void bilgiAl(){
    print("Kapasite : \"$kapasite\"\nMevcut Yolcu Sayisi : \"$mevcutyolcu\"\nKalan Kapasite : \"${kapasite-mevcutyolcu}\"\n$nereden --> $nereye");
  }
  void yolcuekle(int ekle) {
    mevcutyolcu+=ekle;
  }
  void yolcucikar(int cikar){
    mevcutyolcu-=cikar;
  }

  String bilgiver(){
      return "Kapasite : \"$kapasite\"\nMevcut Yolcu Sayisi : \"$mevcutyolcu\"\nKalan Kapasite : \"${kapasite-mevcutyolcu}\"\n$nereden --> $nereye";
  }

}