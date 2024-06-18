class User {
  String id;
  String name;
  String email;
  List<String> favoriteBooks;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.favoriteBooks});

  void displayUserInfo() {
    print('ID: $id');
    print('Name: $name');
    print('Email: $email');
    print('Favorite Books: ${favoriteBooks.join(', ')}');
  }
}
