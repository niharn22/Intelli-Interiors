// ignore_for_file: must_be_immutable

part of 'task_views_bloc.dart';

@immutable
abstract class TaskViewsEvent extends Equatable {}

class TaskViewsInitialEvent extends TaskViewsEvent {
  @override
  List<Object?> get props => [];
}
