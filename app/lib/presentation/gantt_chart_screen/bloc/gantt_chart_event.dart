// ignore_for_file: must_be_immutable

part of 'gantt_chart_bloc.dart';

@immutable
abstract class GanttChartEvent extends Equatable {}

class GanttChartInitialEvent extends GanttChartEvent {
  @override
  List<Object?> get props => [];
}
