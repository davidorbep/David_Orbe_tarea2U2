import 'package:users_app_sql/models/user_model.dart';
import 'package:users_app_sql/services/db_service.dart';

class UserController {
  final DbService _dbService = DbService();

  Future<List<User>> getUsers() async {
    return await _dbService.getUsers();
  }

  Future<void> addUser(User user) async {
    await _dbService.insertUser(user);
  }

  Future<void> updateUser(User user) async {
    await _dbService.updateUser(user);
  }

  Future<void> deleteUser(int id) async {
    await _dbService.deleteUser(id);
  }
}