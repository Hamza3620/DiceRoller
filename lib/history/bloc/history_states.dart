import 'package:dice_roller/data/dice_model.dart';
import 'package:equatable/equatable.dart';

abstract class HistoryState extends Equatable {}

class HistoryEmpty extends HistoryState {
  @override
  List<Object?> get props => [];
}

class HistoryList extends HistoryState {
  final List<RollStamp> _list;
  HistoryList(this._list);
  List<RollStamp> get getHistory => _list;
  @override
  List<Object?> get props => [];
}
