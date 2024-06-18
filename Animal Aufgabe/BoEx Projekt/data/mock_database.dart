import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  final Map<String, User> _database = {};

  @override
  void addUser(User newUser) {
    _database[newUser.id] = newUser;
  }

  @override
  List<User> getAllUsers() {
    return _database.values.toList();
  }

  @override
  User getUserById(String id) {
    if (_database.containsKey(id)) {
      return _database[id]!;
    } else {
      throw Exception('User not found');
    }
  }

  @override
  void updateUser(String id, User updatedUser) {
    if (_database.containsKey(id)) {
      _database[id] = updatedUser;
    } else {
      throw Exception('User not found');
    }
  }

  @override
  void removeUser(String id) {
    if (_database.containsKey(id)) {
      _database.remove(id);
    } else {
      throw Exception('User not found');
    }
  }
}
