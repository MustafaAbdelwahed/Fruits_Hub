import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_ecommerce_app/core/services/database_service.dart';
import 'package:fruit_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documnintId}) async {
    var data = await firestore.collection(path).doc(documnintId).get();

    return data.data() as Map<String, dynamic>;
  }
}
