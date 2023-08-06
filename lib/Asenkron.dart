Asenkron işlemler aynı anda birden fazla işlem yapmak anlamına gelir .
    aynı anda birden fazla işlem yapıldığı için daha verimli kod çalışması elde edilir

    Future, async ve await
      Future : fonksiyon tanımlanmasında fonksiyon isminden önce gelir. methodun asenkron olarak çalişacagini ve await methodu ile
                karşılaştığı zaman askıya alacağını bildirir.
      Async : fonksiyon tanımlanmasından sonra gelir ve asenkron çalışmak istediğimiz yapılarda kullanılır ve aynı zamanda birden
                fazla işlem yaptırmak için kullanılır. ornek : dosya işlemleri, internetten veri alirken gibi
      Await : Sadece async fonksiyonları içerisinde kullanılır .amaç asenkron işlemler yaparken yarım kalan bazı kodlama hataları olabilir
                hata oluşturmaması için await kullanılır ve asenkron işlemler içinde kodlamanın bitmesi beklenir.


    Future<void> main () async {
      print("Verilerin Alınması Bekleniyor...");
      var veri = await veriTabaniVeriAl();   // burada await yazmaz isek program çalışır fakat bu kısımda bir hata alınır
      print("Veriler alınıyor...");
      print("Alınan Veri : $veri");

    }

    Future<String> veriTabaniVeriAl() async{
      for (var i=1;i<=5;i++){
        Future.delayed(Duration(seconds: i), () => print("Alinan veri miktari : ${i*20}"));
      }
      return Future.delayed(Duration(seconds: 5), () => "Veritabanı Veri Kümesi");
    }