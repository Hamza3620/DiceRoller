import 'package:auto_route/auto_route.dart';
import 'package:dice_roller/dice/bloc/dice_bloc.dart';
import 'package:dice_roller/dice/ui/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceRollScreen extends StatelessWidget implements AutoRouteWrapper {
  const DiceRollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Roll A Die"), actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('history');
              },
              icon: const Icon(
                Icons.history,
                size: 30,
              ))
        ]),
        body: const Body());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => DiceBloc(), child: this);
  }
}
