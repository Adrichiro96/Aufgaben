import 'dart:io';

//  Hello World
void helloWorld() {
  print('Hello, World!');
}

//  Hello $Name
void helloName(String name) {
  print('Hello $name');
}

//  Summe von zwei Zahlen
int sum(int a, int b) {
  return a + b;
}

//  Finde die größere Zahl
int max(int a, int b) {
  return (a > b) ? a : b;
}

//  Gerade Zahl
bool isEven(int number) {
  return number % 2 == 0;
}

//  Summe
int sumList(List<int> numbers) {
  int total = 0;
  for (int number in numbers) {
    total += number;
  }
  return total;
}

//  Durchschnitt
double average(List<int> numbers) {
  int total = sumList(numbers);
  return total / numbers.length;
}

//  Zeichen (negativ, positiv, oder 0)
String checkSign(int number) {
  if (number > 0) {
    return 'positiv';
  } else if (number < 0) {
    return 'negativ';
  } else {
    return '0';
  }
}

//  Aufteilung
List<String> splitString(String str) {
  return str.split('');
}

//  Buchstabenzahl
Map<String, int> charCount(List<String> strings) {
  Map<String, int> result = {};
  for (String str in strings) {
    result[str] = str.length;
  }
  return result;
}

//  Multiplikation zweier Zahlen
int multiply(int a, int b) {
  return a * b;
}

//  Multiplikation mehrerer Zahlen
int multiplyMultiple(List<int> numbers) {
  int result = 1;
  for (int number in numbers) {
    result *= number;
  }
  return result;
}

//  Vorzeichen umdrehen
int flipSign(int number) {
  return -number;
}

//  Finde die kleinste Zahl
int min(List<int> numbers) {
  int smallest = numbers[0];
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
  }
  return smallest;
}

//  Umrechnung von Temperatur
double convertTemperature(double temperature, bool toFahrenheit) {
  if (toFahrenheit) {
    return temperature * 1.8 + 32;
  } else {
    return (temperature - 32) / 1.8;
  }
}

//  Zeichenketten-Verkettung
String concatenateStrings(List<String> strings) {
  return strings.join('');
}

//  Prime Checker
bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

//  Reverse Number
int reverseNumber(int number) {
  int reversed = 0;
  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }
  return reversed;
}

//  Seconds Formatter
String formatSeconds(int seconds) {
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  int remainingSeconds = seconds % 60;
  return '$hours Stunden, $minutes Minuten, $remainingSeconds Sekunden';
}

//  Anagram
bool isAnagram(String str1, String str2) {
  List<String> char1 = str1.split('')..sort();
  List<String> char2 = str2.split('')..sort();
  return char1.join('') == char2.join('');
}

//  Multiplication Advanced
int multiplyWithoutOperator(int a, int b) {
  int result = 0;
  for (int i = 0; i < b; i++) {
    result += a;
  }
  return result;
}

// Text in Wörter einteilen
List<String> splitWords(String text) {
  List<String> words = [];
  String word = '';
  for (int i = 0; i < text.length; i++) {
    if (text[i] != ' ') {
      word += text[i];
    } else if (word.isNotEmpty) {
      words.add(word);
      word = '';
    }
  }
  if (word.isNotEmpty) {
    words.add(word);
  }
  return words;
}

// Textanalyse
Map<String, int> textAnalysis(String text) {
  int spaces = 0;
  int vowels = 0;
  int others = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i] == ' ') {
      spaces += 1;
    } else if ('aeiouAEIOU'.contains(text[i])) {
      vowels += 1;
    } else {
      others += 1;
    }
  }
  return {
    'Leerzeichen': spaces,
    'Vokale': vowels,
    'Sonstige': others,
  };
}

// FizzBuzz
void fizzBuzz(int n) {
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
}

// Quadratmuster
void printSquare(int size) {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      stdout.write(' #');
    }
    print('');
  }
}

// Palindrom
bool isPalindrome(String str) {
  int len = str.length;
  for (int i = 0; i < len ~/ 2; i++) {
    if (str[i] != str[len - i - 1]) {
      return false;
    }
  }
  return true;
}

// Klammerproblem
bool validParentheses(String expression) {
  int balance = 0;
  for (int i = 0; i < expression.length; i++) {
    if (expression[i] == '(') {
      balance += 1;
    } else if (expression[i] == ')') {
      balance -= 1;
    }
    if (balance < 0) {
      return false;
    }
  }
  return balance == 0;
}
