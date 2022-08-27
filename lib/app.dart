import 'package:dice_roller/dice_app_router.gr.dart';
import 'package:flutter/material.dart';

class DiceRollApp extends StatelessWidget {
  DiceRollApp({Key? key}) : super(key: key);
  final _appRouter = DiceAppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dice Roll App',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
