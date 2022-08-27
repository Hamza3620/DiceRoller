class RollStamp {
  int id;
  int num;
  String timeStamp;
  RollStamp(this.id, this.num, this.timeStamp);
}

class HistoryManager {
  static final HistoryManager _instance = HistoryManager._internal();
  List<RollStamp> rolls = [];

  factory HistoryManager() {
    return _instance;
  }

  HistoryManager._internal() {}

  List<RollStamp> openFile() {
    return rolls;
  }

  void writeFile(RollStamp s) {
    rolls.add(s);
  }
}
