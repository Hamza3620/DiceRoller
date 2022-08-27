import 'package:dice_roller/dice/bloc/dice_bloc.dart';
import 'package:dice_roller/dice/bloc/dice_states.dart';
import 'package:dice_roller/dice/ui/roll_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: MediaQuery.of(context).size.width,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        BlocBuilder<DiceBloc, DiceRollState>(builder: (context, state) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            "assets/dice_images/${state.getFirstNumber}.png"),
                      )),
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            "assets/dice_images/${state.getSecondNumber}.png"),
                      )),
                ],
              ));
        }),
        const RollButton(),
      ]),
    );
  }
}
