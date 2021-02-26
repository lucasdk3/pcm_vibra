import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';

class ImagePickerDatasource {
  Future<Either<Failure, Uint8List>> imagePicker() async {
    Uint8List imageFile;
    ImagePicker picker = ImagePicker();
    try {
      final pickedFile = await picker.getImage(
          source: ImageSource.gallery,
          maxHeight: 400,
          maxWidth: 400,
          imageQuality: 85);
      imageFile = await pickedFile.readAsBytes();
      return Right(imageFile);
    } catch (e) {
      print(e);
      return Left(e);
    }
  }
}
