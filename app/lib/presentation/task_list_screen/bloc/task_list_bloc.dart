import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/task_list_screen/models/task_list_model.dart';
part 'task_list_event.dart';
part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc(TaskListState initialState) : super(initialState) {
    on<TaskListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TaskListInitialEvent event,
    Emitter<TaskListState> emit,
  ) async {}
}
