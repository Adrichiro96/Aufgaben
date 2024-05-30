import 'dart:io';

void main() {
  // Main function to control the program
  print('Welcome to the Course Progress Calculator!');
  print('Please enter the number of days you have completed in the course:');

  int completedDays = int.parse(stdin.readLineSync()!);
  int totalDays = 270; // Duration of the 9-month course in days

  double progressPercentage = calculateProgress(completedDays, totalDays);
  int remainingDays = totalDays - completedDays;

  displayProgress(completedDays, totalDays, progressPercentage, remainingDays);
  notifyMilestones(progressPercentage);
}

double calculateProgress(int completedDays, int totalDays) {
  // Function to convert days into percentage
  return (completedDays / totalDays) * 100;
}

void displayProgress(int completedDays, int totalDays, double progressPercentage, int remainingDays) {
  // Function to display the course progress
  print('You have completed $completedDays days out of $totalDays.');
  print('This corresponds to a progress of ${progressPercentage.toStringAsFixed(2)}%.');
  print('You have $remainingDays days left until the course ends.');
}

void notifyMilestones(double progressPercentage) {
  // Function to check and notify about milestones
  if (progressPercentage >= 100) {
    print('Congratulations! You have completed the course!');
  } else if (progressPercentage >= 75) {
    print('Great job! You have reached 75% of the course!');
  } else if (progressPercentage >= 50) {
    print('Well done! You have reached 50% of the course!');
  } else if (progressPercentage >= 25) {
    print('Good start! You have reached 25% of the course!');
  } else {
    print('Keep going! You are making progress!');
  }
}
