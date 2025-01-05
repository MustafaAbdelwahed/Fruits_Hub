import 'dart:convert';

import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/services/shared_prefrences_singletone.dart.dart';
import 'package:fruit_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);

  var userEntitiy = UserModel.fromjson(jsonDecode(jsonString));
  return userEntitiy;
}
