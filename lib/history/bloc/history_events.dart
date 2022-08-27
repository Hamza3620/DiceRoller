import 'package:equatable/equatable.dart';

abstract class HistoryEvent extends Equatable {}

class ClearHistory extends HistoryEvent {
  @override
  List<Object?> get props => [];
}

class FetchHistory extends HistoryEvent {
  @override
  List<Object?> get props => [];
}

class OnRemoveItem extends HistoryEvent {
  final int index;
  OnRemoveItem(this.index);
  @override
  List<Object?> get props => [index];
}
