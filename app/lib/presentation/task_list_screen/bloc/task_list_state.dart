// ignore_for_file: must_be_immutable

part of 'task_list_bloc.dart';

class TaskListState extends Equatable {
  TaskListState({this.taskListModelObj});

  TaskListModel? taskListModelObj;

  @override
  List<Object?> get props => [
        taskListModelObj,
      ];
  TaskListState copyWith({TaskListModel? taskListModelObj}) {
    return TaskListState(
      taskListModelObj: taskListModelObj ?? this.taskListModelObj,
    );
  }
}
