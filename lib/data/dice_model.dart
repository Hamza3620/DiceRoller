class RollStamp {
  int id;
  int num1;
  int num2;
  String timeStamp;
  RollStamp(this.id, this.num1, this.num2, this.timeStamp);
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
