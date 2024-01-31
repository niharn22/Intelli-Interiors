// ignore_for_file: must_be_immutable

part of 'budgeting_forecasting_bloc.dart';

@immutable
abstract class BudgetingForecastingEvent extends Equatable {}

class BudgetingForecastingInitialEvent extends BudgetingForecastingEvent {
  @override
  List<Object?> get props => [];
}

///event for change checkbox
class ChangeCheckBoxEvent extends BudgetingForecastingEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
