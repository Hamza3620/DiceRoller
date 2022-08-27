import 'dart:ui';
import 'package:dice_roller/dice/bloc/dice_bloc.dart';
import 'package:dice_roller/dice/bloc/dice_states.dart';
import 'package:dice_roller/dice/ui/roll_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';

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
          if (state is DiceRollStart || state is DiceRollIdle) {
            return SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ShakeWidget(
                        duration: const Duration(seconds: 2),
                        shakeConstant: ShakeHardConstant1(),
                        autoPlay: state is DiceRollIdle ? false : true,
                        enableWebMouseHover: true,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/dice_images/0.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ShakeWidget(
                        duration: const Duration(seconds: 2),
                        shakeConstant: ShakeHardConstant2(),
                        autoPlay: state is DiceRollIdle ? false : true,
                        enableWebMouseHover: true,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/dice_images/0.png"),
                        ),
                      ),
                    ),
                  ],
                ));
          } else if (state is DiceRollFinish) {
            return SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ShakeWidget(
                        duration: const Duration(seconds: 2),
                        shakeConstant: ShakeHardConstant1(),
                        autoPlay: false,
                        enableWebMouseHover: true,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/dice_images/${state.getFirstNumber}.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ShakeWidget(
                        duration: const Duration(seconds: 2),
                        shakeConstant: ShakeHardConstant2(),
                        autoPlay: false,
                        enableWebMouseHover: true,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/dice_images/${state.getSecondNumber}.png"),
                        ),
                      ),
                    ),
                  ],
                ));
          }
          return Container();
        }),
        const RollButton(),
      ]),
    );
  }
}
