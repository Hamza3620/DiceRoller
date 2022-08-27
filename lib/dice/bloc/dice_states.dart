import 'package:equatable/equatable.dart';

abstract class DiceRollState extends Equatable {
  final int _num;
  const DiceRollState(this._num);
  int get getNumber => _num;
  @override
  List<Object> get props => [_num];
}

class DiceRollFinish extends DiceRollState {
  final int _num;
  const DiceRollFinish(this._num) : super(0);
  @override
  List<Object> get props => [_num];
}
