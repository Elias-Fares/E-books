import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  final _auth = FirebaseAuth.instance;
  late final GoogleSignIn _googleSign;
  var user;
  var userType;
  String state = "";

  Future<void> signIn() async {
    try {
      state = "loading";
      update();
      await _auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      state = "done";
      update();
      user = _auth.currentUser;
      userType = _auth;
      Get.offNamed("/MainPage", arguments: [user, userType]);
    } catch (e, s) {
      print(e.runtimeType);
      print(s);
      print("=========== $e ===============");
      // print(s);
      state = "error";
      update();
      if (e is FirebaseAuthException) {
        Get.snackbar("INVALID", e.message!,
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  //=================Google sign in part===================//

  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    try {
      final GoogleSignInAccount? googleUser = await _googleSign.signIn();
      if (googleUser == null) {
        return;
      }
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      user = googleUser;
      userType = _googleSign;
      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
      Get.offNamed("/MainPage", arguments: [user, userType]);
    } catch (e, s) {
      print(e.runtimeType);
      print(s);
      print("=========== $e ===============");
      // print(s);
      state = "error";
      update();
      if (e is FirebaseAuthException) {
        Get.snackbar("INVALID", e.code, snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

//=================================================================//
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    _googleSign = GoogleSignIn();
    // print(email.value.toString());
    super.onInit();
  }
}
