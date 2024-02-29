import 'dart:io';
import 'constants/constants.dart' as constants;
import 'package:sqlite3/sqlite3.dart';

void greetUser() {
  print("==============================================================");
  print("==============================================================");
  print("== L  A   Z   Y     P   W   D     M   A   N   A   G   E   R ==");
  print("==============================================================");
  print("==============================================================");
  print("");

  print("Starting up...");
  print("");
  startUp();
}

bool startUp() {
  bool startupSequenceOK = false;

  checkDB();

  return startupSequenceOK;
}

void checkDB() {
  bool dbExists = File(constants.dbPath).existsSync();

  if (!dbExists) {
    print("Local database not found. Creating one...");
    createDB();
  }
}

void createDB() {
  File(constants.dbPath).createSync(recursive: true);
  print("Local database created and ready to be used.");

  // open DB
  var db = sqlite3.open(constants.dbPath);

  // CREATE USER_INFO TABLE
  db.execute(constants.createUserTable);
  print("Please enter your username: ");

  String? userName = stdin.readLineSync();
  userName!.trim();
  db.execute('INSERT INTO USER_INFO(USERNAME) VALUES("$userName")');
}
