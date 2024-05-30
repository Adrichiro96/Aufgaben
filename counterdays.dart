import 'dart:io';

void main() {
  int absoluteDays = 270;

  int finishedDays = readUserInput();
  double daysToPercent = getDaysToPercent(finishedDays, absoluteDays);
  print(daysToPercent);
}

// Function, to convert percent.
double getDaysToPercent(int finishedDays, int absoluteDays) {
  return (finishedDays / absoluteDays) * 100;
}

// Function, to read user data and checking.
int readUserInput() {
  print("Give me a day:");
  String? input = stdin.readLineSync();
  if (input!.isEmpty) {
    print("Error, input missing");
    return readUserInput();
  } else if (int.tryParse(input) == null) {
    print("Incorrect value");
    return readUserInput();
  } else {
    return int.parse(input);
  }
}
