import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dice_roller/data/dice_model.dart';
import 'package:intl/intl.dart';

import 'dice_events.dart';
import 'dice_states.dart';

class DiceBloc extends Bloc<DiceRollEvent, DiceRollState> {
  DiceBloc() : super(DiceRollIdle()) {
    on<DiceRollPressed>((event, emit) async {
      emit(DiceRollStart());
      await Future.delayed(const Duration(seconds: 2));
      var rng = Random();
      int num1 = rng.nextInt(6) + 1;
      int num2 = rng.nextInt(6) + 1;
      var d12 = DateFormat('MMM/dd/yyyy, hh:mm:ss a').format(DateTime.now());
      RollStamp r =
          RollStamp(HistoryManager().rolls.length + 1, num1, num2, d12);
      HistoryManager().rolls.add(r);
      emit(DiceRollFinish(num1, num2));
    });
  }
}
