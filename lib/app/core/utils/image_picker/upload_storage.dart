import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data' show Uint8List;

class UploadStorage {
  Future<String> uploadData(String imageName, Uint8List image) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref('users/$imageName');
    String url;
    try {
      // Upload raw data.
      TaskSnapshot snapshot = await ref.putData(image);
      url = await ref.getDownloadURL();
    } on FirebaseException catch (e) {
      print(e);
    }
    return url;
  }
}
