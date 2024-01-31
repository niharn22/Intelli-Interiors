import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/task_views_screen/models/task_views_model.dart';
part 'task_views_event.dart';
part 'task_views_state.dart';

class TaskViewsBloc extends Bloc<TaskViewsEvent, TaskViewsState> {
  TaskViewsBloc(TaskViewsState initialState) : super(initialState) {
    on<TaskViewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TaskViewsInitialEvent event,
    Emitter<TaskViewsState> emit,
  ) async {}
}
