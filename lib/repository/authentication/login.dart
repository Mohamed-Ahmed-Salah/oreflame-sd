
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/models.dart';

class AuthFire {
  FirebaseAuth auth = FirebaseAuth.instance;

  static signup() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: "testttt3@example.com", password: "SuperSecretPassword!");
      print('created');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print(e);
      }
    } catch (e) {
      print(e);
    }
  }

  static sigin2() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: "testttt@example.com", password: "SuperSecretPassword!1");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  static signout() async {
    await FirebaseAuth.instance.signOut();
  }
}
