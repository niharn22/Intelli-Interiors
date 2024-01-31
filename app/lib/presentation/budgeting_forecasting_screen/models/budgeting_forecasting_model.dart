import 'package:equatable/equatable.dart';
import 'listcheckmark_item_model.dart';

// ignore: must_be_immutable
class BudgetingForecastingModel extends Equatable {
  BudgetingForecastingModel({this.listcheckmarkItemList = const []});

  List<ListcheckmarkItemModel> listcheckmarkItemList;

  BudgetingForecastingModel copyWith(
      {List<ListcheckmarkItemModel>? listcheckmarkItemList}) {
    return BudgetingForecastingModel(
      listcheckmarkItemList:
          listcheckmarkItemList ?? this.listcheckmarkItemList,
    );
  }

  @override
  List<Object?> get props => [listcheckmarkItemList];
}
