const String dbPath = "./DB/_db.db";
const String createUserTable =
    "CREATE TABLE USER_INFO(ID INTEGER PRIMARY KEY AUTOINCREMENT, USERNAME TEXT NOT NULL)";
const String createPasswordsTable =
    "CREATE TABLE PASSWORDS(ID INTEGER PRIMARY KEY AUTOINCREMENT, SERVICE_NAME TEXT NOT NULL, PASSWORD TEXT NOT NULL)";
