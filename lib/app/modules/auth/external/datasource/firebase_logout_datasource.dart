import 'package:firebase_auth/firebase_auth.dart';

class FirebaseLogoutDatasource {
  Future logout() async {
    FirebaseAuth.instance.signOut();
  }
}
