import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pcm_vibra/app/core/utils/image_picker/convert_image.dart';
import 'package:pcm_vibra/app/core/utils/image_picker/convert_web_image.dart';
import 'package:pcm_vibra/app/core/utils/image_picker/upload_storage.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/users_model.dart';

class FiretoreRegisterDatasource {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  DocumentReference documentReference;
  ConvertImage convertImage = ConvertImage();
  ConvertWebImage convertWebImage = ConvertWebImage();
  UploadStorage uploadStorage = UploadStorage();

  Future<void> addUser(UsersModel usersModel) async {
    String imagem;
    imagem = await uploadStorage.uploadData(usersModel.nome, usersModel.imagem);
    print(imagem);
    users
        .add({
          'uid': usersModel.uid,
          'nome': usersModel.nome,
          'email': usersModel.email,
          'setor': usersModel.setor,
          'imagem': imagem
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
