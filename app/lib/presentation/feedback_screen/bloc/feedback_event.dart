// ignore_for_file: must_be_immutable

part of 'feedback_bloc.dart';

@immutable
abstract class FeedbackEvent extends Equatable {}

class FeedbackInitialEvent extends FeedbackEvent {
  @override
  List<Object?> get props => [];
}
