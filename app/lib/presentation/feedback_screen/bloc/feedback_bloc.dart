import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/feedback_screen/models/feedback_model.dart';
part 'feedback_event.dart';
part 'feedback_state.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc(FeedbackState initialState) : super(initialState) {
    on<FeedbackInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedbackInitialEvent event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(state.copyWith(
        inputFieldController: TextEditingController(),
        textPlaceholderController: TextEditingController()));
  }
}
