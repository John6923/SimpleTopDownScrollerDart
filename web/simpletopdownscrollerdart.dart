import 'dart:html';
import 'dart:convert' show JSON;

List images = [];

void main() {
  querySelector("#sample_text_id")
      ..text = "Click me!"
      ..onClick.listen(reverseText);
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

//void setImage(int x, int y, int image)
