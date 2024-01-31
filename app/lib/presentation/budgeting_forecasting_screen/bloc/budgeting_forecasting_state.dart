// ignore_for_file: must_be_immutable

part of 'budgeting_forecasting_bloc.dart';

class BudgetingForecastingState extends Equatable {
  BudgetingForecastingState({
    this.isCheckbox = false,
    this.budgetingForecastingModelObj,
  });

  BudgetingForecastingModel? budgetingForecastingModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        budgetingForecastingModelObj,
      ];
  BudgetingForecastingState copyWith({
    bool? isCheckbox,
    BudgetingForecastingModel? budgetingForecastingModelObj,
  }) {
    return BudgetingForecastingState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      budgetingForecastingModelObj:
          budgetingForecastingModelObj ?? this.budgetingForecastingModelObj,
    );
  }
}
