import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/kanbanboard_item_model.dart';
import 'package:intelliinteriors/presentation/kanban_board_screen/models/kanban_board_model.dart';
part 'kanban_board_event.dart';
part 'kanban_board_state.dart';

class KanbanBoardBloc extends Bloc<KanbanBoardEvent, KanbanBoardState> {
  KanbanBoardBloc(KanbanBoardState initialState) : super(initialState) {
    on<KanbanBoardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    KanbanBoardInitialEvent event,
    Emitter<KanbanBoardState> emit,
  ) async {
    emit(state.copyWith(
        kanbanBoardModelObj: state.kanbanBoardModelObj
            ?.copyWith(kanbanboardItemList: fillKanbanboardItemList())));
  }

  List<KanbanboardItemModel> fillKanbanboardItemList() {
    return List.generate(3, (index) => KanbanboardItemModel());
  }
}
