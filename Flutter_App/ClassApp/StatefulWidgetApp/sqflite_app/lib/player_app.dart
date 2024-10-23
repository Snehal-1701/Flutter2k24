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
Future<List<Map>> getPlayerData() async{
  Database localDB = await database;
  List<Map> playerData = await localDB.query(
    "Player"
  );
  return playerData;
}

///UPDATE DATA - UPDATE 
void updatePlayerData(PlayerModel pObj) async {
  Database localDB = await database;
  localDB.update(
    "Player",
    pObj.playerMap(),
    where: 'jerNo = ?',
    whereArgs: [pObj.jerNo],
  );
}

///DELETE DATA - DELETE
void deletePlayerData(int jerNo) async {
  Database localDB = await database;
  localDB.delete(
    "Player",
    where: "jerNo = ?",
    whereArgs: [jerNo],
  );
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

  pObj2 = PlayerModel(
    playerName: "Rohit Sharma",
    jerNo: 45,
    runs: 60000,
    avg: 60.33
  );

  updatePlayerData(pObj2);
  print(getPlayerData());

  deletePlayerData(pObj2.jerNo);
  print(getPlayerData());

}