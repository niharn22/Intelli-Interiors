import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/gantt_chart_screen/models/gantt_chart_model.dart';
part 'gantt_chart_event.dart';
part 'gantt_chart_state.dart';

class GanttChartBloc extends Bloc<GanttChartEvent, GanttChartState> {
  GanttChartBloc(GanttChartState initialState) : super(initialState) {
    on<GanttChartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GanttChartInitialEvent event,
    Emitter<GanttChartState> emit,
  ) async {}
}
