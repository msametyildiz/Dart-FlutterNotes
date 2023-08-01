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

class constuctor{
    String name ;
    int age;
    // 1. yazım    constuctor(this.name , this.yas);
    // 2. yazım
    constuctor({required this.name,required this.age});// burada ise her iki tarafında zorunlu doldurulması gereken bir yer olduğunu belirttim.

}

class a{
  late int publicDegisken;
  late int _privateDegisken;

  a(this._privateDegisken);


}