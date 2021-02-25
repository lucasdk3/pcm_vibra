import 'dart:typed_data';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcm_vibra/app/app_router.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/core/utils/image_picker/image_picker.dart';
import 'package:pcm_vibra/app/modules/register/external/datasource/firebase_register_datasource.dart';
import 'package:pcm_vibra/app/modules/register/external/datasource/firestore_register_datasource.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/users_model.dart';

class RegisterRepository {
  ImagePickerDatasource imageDatasource = ImagePickerDatasource();

  FirebaseRegisterDatasource registerDatasource = FirebaseRegisterDatasource();

  FiretoreRegisterDatasource firestoreDatasource = FiretoreRegisterDatasource();
  Future<Uint8List> imagePicker() async {
    final result = await imageDatasource.imagePicker();
    return result.fold((l) => null, (image) {
      return (image);
    });
  }

  Future<Failure> register(UsersModel users) async {
    final result = await registerDatasource.firebaseRegister(users);
    return result.fold((l) {
      Fluttertoast.showToast(msg: l.error);
      return l;
      // ignore: missing_return
    }, (uid) async {
      users.uid = uid;
      await firestoreDatasource.addUser(users);
      Fluttertoast.showToast(msg: 'Registrado com sucesso');
      AppRouter.instance.off('/base');
    });
  }
}
