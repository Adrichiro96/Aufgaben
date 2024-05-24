void main() {
  print("\nAufgabe 3:");
  List<String> months = [
    "Januar",
    "Februar",
    "März",
    "April",
    "Mai",
    "Juni",
    "Juli",
    "August",
    "September",
    "Oktober",
    "November",
    "Dezember"
  ];
  List<int> days = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31
  ];

  for (String month in months) {
    for (int day in days) {
      if ((month == "Februar" && day > 28) ||
          (["April", "Juni", "September", "November"].contains(month) &&
              day > 30)) {
        break;
      }
      print("$day. $month");
    }
  }
}
