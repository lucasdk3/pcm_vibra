import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDatasource {
  Future<bool> authFirebase() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }
}
