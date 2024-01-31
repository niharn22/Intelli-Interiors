// ignore_for_file: must_be_immutable

part of 'qa_tracker_bloc.dart';

class QaTrackerState extends Equatable {
  QaTrackerState({this.qaTrackerModelObj});

  QaTrackerModel? qaTrackerModelObj;

  @override
  List<Object?> get props => [
        qaTrackerModelObj,
      ];
  QaTrackerState copyWith({QaTrackerModel? qaTrackerModelObj}) {
    return QaTrackerState(
      qaTrackerModelObj: qaTrackerModelObj ?? this.qaTrackerModelObj,
    );
  }
}
