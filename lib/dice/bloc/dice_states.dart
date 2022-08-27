import 'package:equatable/equatable.dart';

abstract class DiceRollState extends Equatable {
  final int _num1, _num2;
  const DiceRollState(this._num1, this._num2);
  int get getFirstNumber => _num1;
  int get getSecondNumber => _num2;
  @override
  List<Object> get props => [_num1, _num2];
}

class DiceRollFinish extends DiceRollState {
  final int _num1, _num2;
  const DiceRollFinish(this._num1, this._num2) : super(0, 0);
  @override
  List<Object> get props => [_num1, _num2];
}
