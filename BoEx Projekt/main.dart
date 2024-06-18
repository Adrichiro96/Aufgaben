import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/user.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  // Adding the first user
  User firstUser = User(
    id: '1',
    name: 'Putin Vladimir',
    email: 'alice@example.com',
    favoriteBooks: ['No prefered books, only likes war with other countries'],
  );
  mockDatabase.addUser(firstUser);

  // Adding the second user
  User secondUser = User(
    id: '2',
    name: 'Trump Adolf',
    email: 'AmericanMDF@usa.com',
    favoriteBooks: ['MEIN KAMPF', 'Adolf Hitler'],
  );
  mockDatabase.addUser(secondUser);

  // Displaying all user data
  List<User> allUsers = mockDatabase.getAllUsers();
  print('All users:');
  for (var user in allUsers) {
    user.displayUserInfo();
  }

  // Displaying a specific user by ID
  try {
    User user = mockDatabase.getUserById('1');
    print('User with ID 1:');
    user.displayUserInfo();
  } catch (e) {
    print(e);
  }

  // Updating a user
  User updatedUser = User(
    id: '1',
    name: 'Alice Smith',
    email: 'alice.smith@example.com',
    favoriteBooks: ['1984', 'To Kill a Mockingbird', 'Moby-Dick'],
  );
  try {
    mockDatabase.updateUser('1', updatedUser);
  } catch (e) {
    print(e);
  }

  // Displaying the updated user
  try {
    User updatedUserInfo = mockDatabase.getUserById('1');
    print('Updated User with ID 1:');
    updatedUserInfo.displayUserInfo();
  } catch (e) {
    print(e);
  }

  // Removing a user
  try {
    mockDatabase.removeUser('2');
  } catch (e) {
    print(e);
  }

  // Displaying all users after removal
  print('Users after removing user with ID 2:');
  allUsers = mockDatabase.getAllUsers();
  for (var user in allUsers) {
    user.displayUserInfo();
  }
}
