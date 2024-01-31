import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcheckmark_item_model.dart';
import 'package:intelliinteriors/presentation/budgeting_forecasting_screen/models/budgeting_forecasting_model.dart';
part 'budgeting_forecasting_event.dart';
part 'budgeting_forecasting_state.dart';

class BudgetingForecastingBloc
    extends Bloc<BudgetingForecastingEvent, BudgetingForecastingState> {
  BudgetingForecastingBloc(BudgetingForecastingState initialState)
      : super(initialState) {
    on<BudgetingForecastingInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<BudgetingForecastingState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox: event.value,
    ));
  }

  List<ListcheckmarkItemModel> fillListcheckmarkItemList() {
    return List.generate(8, (index) => ListcheckmarkItemModel());
  }

  _onInitialize(
    BudgetingForecastingInitialEvent event,
    Emitter<BudgetingForecastingState> emit,
  ) async {
    emit(state.copyWith(
      isCheckbox: false,
    ));
    emit(state.copyWith(
        budgetingForecastingModelObj:
            state.budgetingForecastingModelObj?.copyWith(
      listcheckmarkItemList: fillListcheckmarkItemList(),
    )));
  }
}
