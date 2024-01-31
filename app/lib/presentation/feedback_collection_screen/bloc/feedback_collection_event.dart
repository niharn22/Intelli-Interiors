// ignore_for_file: must_be_immutable

part of 'feedback_collection_bloc.dart';

@immutable
abstract class FeedbackCollectionEvent extends Equatable {}

class FeedbackCollectionInitialEvent extends FeedbackCollectionEvent {
  @override
  List<Object?> get props => [];
}
