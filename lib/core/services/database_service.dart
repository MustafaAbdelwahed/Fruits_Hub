import '../../features/auth/domain/entity/user_entity.dart';

abstract class DataBaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  });
  Future<Map<String, dynamic>> getData(
      {required String path, required String documnintId});
}
