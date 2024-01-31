// ignore_for_file: must_be_immutable

part of 'kanban_board_bloc.dart';

@immutable
abstract class KanbanBoardEvent extends Equatable {}

class KanbanBoardInitialEvent extends KanbanBoardEvent {
  @override
  List<Object?> get props => [];
}
