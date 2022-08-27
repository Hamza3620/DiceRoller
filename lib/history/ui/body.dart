import 'package:dice_roller/history/bloc/history_bloc.dart';
import 'package:dice_roller/history/bloc/history_events.dart';
import 'package:dice_roller/history/bloc/history_states.dart';
import 'package:dice_roller/history/ui/clear_history_button.dart';
import 'package:dice_roller/history/ui/no_history_body.dart';
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
      child: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryEmpty) {
            return const NoHistoryBody();
          } else if (state is HistoryList) {
            return ListView(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: state.getHistory.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key:
                            ValueKey<String>(state.getHistory[index].timeStamp),
                        background: const Center(
                          child: ListTile(
                            trailing: Icon(
                              Icons.delete_outline,
                              size: 35,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        direction: DismissDirection.endToStart,
                        onDismissed: (DismissDirection direction) {
                          BlocProvider.of<HistoryBloc>(context)
                              .add(OnRemoveItem(index));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 4.0),
                          child: Card(
                            elevation: 4,
                            child: ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "${state.getHistory[index].num1} + ${state.getHistory[index].num2} = ${state.getHistory[index].num1 + state.getHistory[index].num2}",
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.purple,
                                      ),
                                      Text(state.getHistory[index].timeStamp
                                          .split(',')[0]),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.alarm,
                                        color: Colors.black,
                                      ),
                                      Text(state.getHistory[index].timeStamp
                                          .split(', ')[1]),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/dice_images/${state.getHistory[index].num1}.png',
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/dice_images/${state.getHistory[index].num2}.png',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                const ClearHistoryButton(),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
