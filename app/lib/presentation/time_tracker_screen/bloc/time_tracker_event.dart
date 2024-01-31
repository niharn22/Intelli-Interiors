// ignore_for_file: must_be_immutable

part of 'time_tracker_bloc.dart';

@immutable
abstract class TimeTrackerEvent extends Equatable {}

class TimeTrackerInitialEvent extends TimeTrackerEvent {
  @override
  List<Object?> get props => [];
}
