import 'dart:html';

import 'images.dart';
import 'map.dart';

void main() {
  querySelector("#sample_text_id")
      ..text = "Click me!"
      ..onClick.listen(reverseText);
  buildTable();
  getImagesFromHttp().then((_) {
    querySelector("#sample_text_id").text = "Loaded!";
  });
}

void buildTable(){
  TableElement gameTable = querySelector("#game_table");
    var buffer = new StringBuffer();
    for(int i = 0; i < 8; i++){
      buffer.write('<tr>');
      for(int j = 0; j < 8; j++){
        int num = i * 8 + j;
        buffer.write('<td id=\'cell\'><div id=\'cell$num\'></div>');
      }
      buffer.write('</tr>');
    }
    gameTable.innerHtml = buffer.toString();
}


void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();
}

