import 'package:network_image_to_byte/network_image_to_byte.dart';
import 'dart:typed_data';

class ConvertWebImage {
  Future<Uint8List> convertWebImage(String path) async {
    Uint8List byteImage = await networkImageToByte(path);
    return byteImage;
  }
}
