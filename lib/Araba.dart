class Araba{
  late String renk ;
  late int hiz=0;
  late bool calisiyormu;
  void calistir(){
    hiz=5;
    calisiyormu=true;
  }
  void durdur(){
    hiz=0;
    calisiyormu=false;
  }
  void hizlan(int kackm){
    hiz+=kackm;
  }
  void yavasla(int kackm){
    hiz-=kackm;
  }
  void bilgiAl() {
    print("Renk : $renk\nHizi : $hiz\nCalisiyormu? : $calisiyormu");
}


}