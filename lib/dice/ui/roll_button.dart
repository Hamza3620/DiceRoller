import 'package:dice_roller/dice/bloc/dice_bloc.dart';
import 'package:dice_roller/dice/bloc/dice_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RollButton extends StatelessWidget {
  const RollButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {
          BlocProvider.of<DiceBloc>(context).add(DiceRollPressed());
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child:
              Text("ROLL", style: TextStyle(color: Colors.white, fontSize: 22)),
        ));
  }
}
