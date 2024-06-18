import '../models/user.dart';

abstract class DatabaseRepository {
  // Create
  void addUser(User newUser);

  // Read
  List<User> getAllUsers();
  User getUserById(String id);

  // Update
  void updateUser(String id, User updatedUser);

  // Delete
  void removeUser(String id);
}
