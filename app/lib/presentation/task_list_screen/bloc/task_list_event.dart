// ignore_for_file: must_be_immutable

part of 'task_list_bloc.dart';

@immutable
abstract class TaskListEvent extends Equatable {}

class TaskListInitialEvent extends TaskListEvent {
  @override
  List<Object?> get props => [];
}
