import 'dart:html';
import 'dart:convert' show JSON;
import 'dart:async' show Future;

List images = new List(22);

final String IMAGE_LIST = 'imagelist.json';

Future getImagesFromHttp(){
  Future ret = HttpRequest.getString(IMAGE_LIST);
  ret.then(parseImagesFromJSON);
  return ret;
}

void parseImagesFromJSON(String string){
  Map imageMap = JSON.decode(string);
  images[0] = imageMap['grass'];
  images[1] = imageMap['bush'];
  images[2] = imageMap['key1'];
  images[3] = imageMap['key2'];
  images[4] = imageMap['key3'];
  images[5] = imageMap['key4'];
  images[6] = imageMap['door1'];
  images[7] = imageMap['door2'];
  images[8] = imageMap['door3'];
  images[9] = imageMap['door4'];
  images[10] = imageMap['sword1'];
  images[11] = imageMap['sword2'];
  images[12] = imageMap['sword3'];
  images[13] = imageMap['sword4'];
  images[14] = imageMap['dragon1'];
  images[15] = imageMap['dragon2'];
  images[16] = imageMap['dragon3'];
  images[17] = imageMap['dragon4'];
  images[18] = imageMap['princess1'];
  images[19] = imageMap['princess2'];
  images[20] = imageMap['princess3'];
  images[21] = imageMap['princess4'];
}

void setImage(int x, int y, int image){
  int num = 8*y+x;
  String imageURL = images[image];
  querySelector('#cell$num').innerHtml = '<img src=\'$imageURL\' />';
}