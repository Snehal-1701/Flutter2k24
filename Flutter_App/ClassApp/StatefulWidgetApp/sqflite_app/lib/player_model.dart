class PlayerModel {
  final String playerName;
  final int jerNo;
  final int runs;
  final double avg;

  PlayerModel({
    required this.playerName,
    required this.jerNo,
    required this.runs,
    required this.avg
  });

  Map<String, dynamic> playerMap() {
    return {
      'playerName' : playerName,
      'jerNo' : jerNo,
      'runs' : runs,
      'avg' : avg
    };
  }
}