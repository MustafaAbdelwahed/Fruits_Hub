import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_ecommerce_app/core/services/database_service.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documnintId}) async {
    if (documnintId != null) {
      await firestore.collection(path).doc(documnintId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documnintId}) async {
    var data = await firestore.collection(path).doc(documnintId).get();

    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIsDataExist(
      {required String path, required String documnintId}) async {
    var data = await firestore.collection(path).doc(documnintId).get();
    return data.exists;
  }
}
