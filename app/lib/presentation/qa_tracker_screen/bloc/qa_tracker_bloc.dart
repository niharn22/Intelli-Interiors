import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/qa_tracker_screen/models/qa_tracker_model.dart';
part 'qa_tracker_event.dart';
part 'qa_tracker_state.dart';

class QaTrackerBloc extends Bloc<QaTrackerEvent, QaTrackerState> {
  QaTrackerBloc(QaTrackerState initialState) : super(initialState) {
    on<QaTrackerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QaTrackerInitialEvent event,
    Emitter<QaTrackerState> emit,
  ) async {}
}
