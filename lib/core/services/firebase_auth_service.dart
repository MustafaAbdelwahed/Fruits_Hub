import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_ecommerce_app/core/errors/exeptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> creatreUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("exeption in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()}and the code is ${e.code}");

      if (e.code == 'weak-password') {
        throw CustomExeption(message: 'كلمة المرور قصيرة.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExeption(
            message: 'الحساب مستخدم بالفعل، يرجى تسجيل الدخول');
      } else if (e.code == 'invalid-email') {
        throw CustomExeption(message: 'البريد الالكتروني غير صالح');
      } else if (e.code == 'network-request-failed') {
        throw CustomExeption(message: 'يرجى التحقق من الاتصال بالانترنت');
      } else {
        throw CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى");
      }
    } catch (e) {
      log("exeption in FirebaseAuthService.creatreUserWithEmailAndPassword ${e.toString()}");

      throw CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى");
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("exeption in FirebaseAuthService.signInWithEmailAndPassword ${e.toString()}and the code is ${e.code}");
      if (e.code == 'user-not-found') {
        throw (CustomExeption(
            message: "البريد الالكتروني او كلمة المرور غير صالح "));
      } else if (e.code == 'wrong-password') {
        throw (CustomExeption(
            message: "البريد الالكتروني او كلمة المرور غير صالح "));
      } else if (e.code == 'network-request-failed') {
        throw CustomExeption(message: 'يرجى التحقق من الاتصال بالانترنت');
      } else {
        throw (CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى"));
      }
    } catch (e) {
      log("exeption in FirebaseAuthService.signInWithEmailAndPassword ${e.toString()}");
      throw (CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى"));
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow

    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
