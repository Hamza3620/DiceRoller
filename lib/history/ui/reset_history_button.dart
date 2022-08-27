import 'package:dice_roller/history/bloc/history_bloc.dart';
import 'package:dice_roller/history/bloc/history_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetHistoryButton extends StatelessWidget {
  const ResetHistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<HistoryBloc>(context).add(ClearHistory());
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            "RESET HISTORY",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
