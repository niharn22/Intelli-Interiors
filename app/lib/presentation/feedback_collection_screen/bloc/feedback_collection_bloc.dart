import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/feedback_collection_screen/models/feedback_collection_model.dart';
part 'feedback_collection_event.dart';
part 'feedback_collection_state.dart';

class FeedbackCollectionBloc
    extends Bloc<FeedbackCollectionEvent, FeedbackCollectionState> {
  FeedbackCollectionBloc(FeedbackCollectionState initialState)
      : super(initialState) {
    on<FeedbackCollectionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedbackCollectionInitialEvent event,
    Emitter<FeedbackCollectionState> emit,
  ) async {}
}
