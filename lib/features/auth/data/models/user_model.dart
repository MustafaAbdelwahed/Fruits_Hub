import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(super.name, super.email, super.uId);

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
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      entity.name,
      entity.email,
      entity.uId,
    );
  }
  toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uId,
    };
  }
}
