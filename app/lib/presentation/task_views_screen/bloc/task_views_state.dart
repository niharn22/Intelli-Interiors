// ignore_for_file: must_be_immutable

part of 'task_views_bloc.dart';

class TaskViewsState extends Equatable {
  TaskViewsState({this.taskViewsModelObj});

  TaskViewsModel? taskViewsModelObj;

  @override
  List<Object?> get props => [
        taskViewsModelObj,
      ];
  TaskViewsState copyWith({TaskViewsModel? taskViewsModelObj}) {
    return TaskViewsState(
      taskViewsModelObj: taskViewsModelObj ?? this.taskViewsModelObj,
    );
  }
}
