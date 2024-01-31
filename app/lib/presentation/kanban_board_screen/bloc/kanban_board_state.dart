// ignore_for_file: must_be_immutable

part of 'kanban_board_bloc.dart';

class KanbanBoardState extends Equatable {
  KanbanBoardState({this.kanbanBoardModelObj});

  KanbanBoardModel? kanbanBoardModelObj;

  @override
  List<Object?> get props => [
        kanbanBoardModelObj,
      ];
  KanbanBoardState copyWith({KanbanBoardModel? kanbanBoardModelObj}) {
    return KanbanBoardState(
      kanbanBoardModelObj: kanbanBoardModelObj ?? this.kanbanBoardModelObj,
    );
  }
}
