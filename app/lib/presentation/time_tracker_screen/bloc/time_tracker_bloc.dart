import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/time_tracker_screen/models/time_tracker_model.dart';
part 'time_tracker_event.dart';
part 'time_tracker_state.dart';

class TimeTrackerBloc extends Bloc<TimeTrackerEvent, TimeTrackerState> {
  TimeTrackerBloc(TimeTrackerState initialState) : super(initialState) {
    on<TimeTrackerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TimeTrackerInitialEvent event,
    Emitter<TimeTrackerState> emit,
  ) async {}
}
