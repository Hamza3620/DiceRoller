import 'package:auto_route/auto_route.dart';
import 'package:dice_roller/history/bloc/history_bloc.dart';
import 'package:dice_roller/history/bloc/history_events.dart';
import 'package:dice_roller/history/ui/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatelessWidget implements AutoRouteWrapper {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("History")),
      body: const Body(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => HistoryBloc()..add(FetchHistory()), child: this);
  }
}
