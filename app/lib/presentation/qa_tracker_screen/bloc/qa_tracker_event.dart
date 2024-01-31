// ignore_for_file: must_be_immutable

part of 'qa_tracker_bloc.dart';

@immutable
abstract class QaTrackerEvent extends Equatable {}

class QaTrackerInitialEvent extends QaTrackerEvent {
  @override
  List<Object?> get props => [];
}
