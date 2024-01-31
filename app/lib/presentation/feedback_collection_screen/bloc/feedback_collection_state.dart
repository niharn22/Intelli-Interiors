// ignore_for_file: must_be_immutable

part of 'feedback_collection_bloc.dart';

class FeedbackCollectionState extends Equatable {
  FeedbackCollectionState({this.feedbackCollectionModelObj});

  FeedbackCollectionModel? feedbackCollectionModelObj;

  @override
  List<Object?> get props => [
        feedbackCollectionModelObj,
      ];
  FeedbackCollectionState copyWith(
      {FeedbackCollectionModel? feedbackCollectionModelObj}) {
    return FeedbackCollectionState(
      feedbackCollectionModelObj:
          feedbackCollectionModelObj ?? this.feedbackCollectionModelObj,
    );
  }
}
