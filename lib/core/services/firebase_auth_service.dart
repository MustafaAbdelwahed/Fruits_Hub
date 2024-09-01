import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/core/errors/exeptions.dart';

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
      if (e.code == 'weak-password') {
        throw CustomExeption(message: 'كلمة المرور قصيرة.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExeption(
            message: 'الحساب مستخدم بالفعل، يرجى تسجيل الدخول');
      } else if (e.code == 'invalid-email') {
        throw CustomExeption(message: 'البريد الالكتروني غير صالح');
      } else {
        throw CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى");
      }
    } catch (e) {
      throw CustomExeption(message: "لقد حدث خطأ، يرجى المحاولة مرة أخرى");
    }
  }
}
