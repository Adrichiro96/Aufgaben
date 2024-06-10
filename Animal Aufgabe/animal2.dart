import 'animal.dart';

class Bear extends Animal {
  static const String species = 'Russian Bear';
  String type;

  Bear({required String name, required this.type}) : super(name);

  @override
  void makeSound() => print('$name says: Im god blyad!');
  @override
  void move() => print('$name is bombing Ukraine');
}

class Tiger extends Animal {
  static const String species = 'American Tiger';
  String subspecies;

  Tiger({required String name, required this.subspecies}) : super(name);

  @override
  void makeSound() => print('$name says: God Bless America, fucking mexicans!');
  @override
  void move() => print('$name is trying to stay out of jail.');
}
