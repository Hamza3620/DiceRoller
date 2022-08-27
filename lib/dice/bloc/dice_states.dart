import 'package:equatable/equatable.dart';

abstract class DiceRollState extends Equatable {}

class DiceRollFinish extends DiceRollState {
  final int _num1, _num2;
  DiceRollFinish(this._num1, this._num2);
  int get getFirstNumber => _num1;
  int get getSecondNumber => _num2;
  @override
  List<Object> get props => [_num1, _num2];
}

class DiceRollStart extends DiceRollState {
  @override
  List<Object> get props => [];
}

class DiceRollIdle extends DiceRollState {
  @override
  List<Object> get props => [];
}
