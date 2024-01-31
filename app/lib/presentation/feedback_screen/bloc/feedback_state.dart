// ignore_for_file: must_be_immutable

part of 'feedback_bloc.dart';

class FeedbackState extends Equatable {
  FeedbackState({
    this.inputFieldController,
    this.textPlaceholderController,
    this.feedbackModelObj,
  });

  TextEditingController? inputFieldController;

  TextEditingController? textPlaceholderController;

  FeedbackModel? feedbackModelObj;

  @override
  List<Object?> get props => [
        inputFieldController,
        textPlaceholderController,
        feedbackModelObj,
      ];
  FeedbackState copyWith({
    TextEditingController? inputFieldController,
    TextEditingController? textPlaceholderController,
    FeedbackModel? feedbackModelObj,
  }) {
    return FeedbackState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      textPlaceholderController:
          textPlaceholderController ?? this.textPlaceholderController,
      feedbackModelObj: feedbackModelObj ?? this.feedbackModelObj,
    );
  }
}
