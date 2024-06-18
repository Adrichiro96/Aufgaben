import 'animal2.dart';

void main() {
  Bear bear = Bear(name: 'Vladimir Putin', type: 'Russian');
  Tiger tiger = Tiger(name: 'Donald Trump', subspecies: 'American MDF');

  bear.makeSound();
  bear.move();
  print('Bear Species: ${Bear.species}');

  tiger.makeSound();
  tiger.move();
  print('Tiger Species: ${Tiger.species}');
}
