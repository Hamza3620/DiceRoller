import 'package:equatable/equatable.dart';

abstract class DiceRollEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class DiceRollPressed extends DiceRollEvent {}
