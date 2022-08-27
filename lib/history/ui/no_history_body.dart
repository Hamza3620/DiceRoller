import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NoHistoryBody extends StatelessWidget {
  const NoHistoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "No history found. Start rolling",
            style: TextStyle(fontSize: 26),
          ),
          GestureDetector(
              onTap: () {
                AutoRouter.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset(
                  "assets/dice_images/dice1.png",
                  width: 100,
                  height: 100,
                ),
              ))
        ],
      ),
    );
  }
}
