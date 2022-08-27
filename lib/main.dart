import 'package:bloc/bloc.dart';
import 'package:dice_roller/bloc_observer.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(DiceRollApp());
}
