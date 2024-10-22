import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'player_model.dart';

///DATABASE INSTANCE 
dynamic database;

///INSERT DATA - INSERT
void insertPlayerData(PlayerModel pObj) async{
  Database localDB = await database;
  localDB.insert(
    "Player",
    pObj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
  );
}

///GET DATA - QUERY
getPlayerData() {
  
}

void playerFun() async{

  database = openDatabase(
    ///PATH OF DATABASE
    join(await getDatabasesPath(), "PlayerDB.db"),
    ///VERSION
    version: 1,
    ///CREATE DATABASE + TABLE
    onCreate: (db, version) {
      db.execute(
        '''CREATE TABLE Player(
          playerName TEXT,
          jerNo INT PRIMARY KEY,
          runs INT, 
          avg REAL        
        )'''
      );
    },
  );

  PlayerModel pObj1 = PlayerModel(
    playerName: "Virat",
    jerNo: 18,
    runs: 50000,
    avg: 50.33
  );

  PlayerModel pObj2 = PlayerModel(
    playerName: "Rohit Sharma",
    jerNo: 45,
    runs: 40000,
    avg: 40.33
  );

  insertPlayerData(pObj1);
  insertPlayerData(pObj2);

  print(getPlayerData());
}