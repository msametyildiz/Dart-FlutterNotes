import 'package:deneme/kategoriler.dart';
import 'package:deneme/yonetmen.dart';
class filmler{
  late int film_id;
  late String film_adi;
  late int film_yili;
  late kategoriler kategori;
  late yonetmenler yonetmen;

  filmler(this.film_adi,this.film_id,this.film_yili,this.kategori,this.yonetmen);

}