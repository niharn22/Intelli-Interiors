// ignore_for_file: must_be_immutable

part of 'gantt_chart_bloc.dart';

class GanttChartState extends Equatable {
  GanttChartState({this.ganttChartModelObj});

  GanttChartModel? ganttChartModelObj;

  @override
  List<Object?> get props => [
        ganttChartModelObj,
      ];
  GanttChartState copyWith({GanttChartModel? ganttChartModelObj}) {
    return GanttChartState(
      ganttChartModelObj: ganttChartModelObj ?? this.ganttChartModelObj,
    );
  }
}
