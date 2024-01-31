// ignore_for_file: must_be_immutable

part of 'time_tracker_bloc.dart';

class TimeTrackerState extends Equatable {
  TimeTrackerState({this.timeTrackerModelObj});

  TimeTrackerModel? timeTrackerModelObj;

  @override
  List<Object?> get props => [
        timeTrackerModelObj,
      ];
  TimeTrackerState copyWith({TimeTrackerModel? timeTrackerModelObj}) {
    return TimeTrackerState(
      timeTrackerModelObj: timeTrackerModelObj ?? this.timeTrackerModelObj,
    );
  }
}
