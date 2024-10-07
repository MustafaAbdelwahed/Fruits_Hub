import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(super.name, super.email, super.uid);

  factory UserModel.fromFirbaseUer(User user) {
    return UserModel(
      user.displayName ?? '',
      user.email ?? '',
      user.uid,
    );
  }
  factory UserModel.fromjson(Map<String, dynamic> map) {
    return UserModel(
      map['name'],
      map['email'],
      map['uid'],
    );
  }
}
