import 'dart:io';
import 'dart:typed_data';

class ConvertImage {
  Future<Uint8List> convertImageFile(String path) async {
    File file = File(path);
    Uint8List bytes = file.readAsBytesSync();
    return bytes;
  }
}
