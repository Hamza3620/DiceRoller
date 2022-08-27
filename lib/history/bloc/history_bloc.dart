import 'package:bloc/bloc.dart';
import 'package:dice_roller/data/dice_model.dart';
import 'package:dice_roller/history/bloc/history_events.dart';
import 'package:dice_roller/history/bloc/history_states.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryEmpty()) {
    on<FetchHistory>((event, emit) {
      HistoryManager().rolls.isEmpty
          ? emit(HistoryEmpty())
          : emit(HistoryList(HistoryManager().rolls));
    });
    on<ClearHistory>(((event, emit) {
      HistoryManager().rolls.clear();
      emit(HistoryEmpty());
    }));

    on<OnRemoveItem>(((event, emit) {
      HistoryManager().rolls.removeAt(event.index);
      add(FetchHistory());
    }));
  }
}
