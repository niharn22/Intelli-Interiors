import 'package:equatable/equatable.dart';
import 'listprofileimglarge_item_model.dart';

// ignore: must_be_immutable
class LiveChatSummaryModel extends Equatable {
  LiveChatSummaryModel({this.listprofileimglargeItemList = const []});

  List<ListprofileimglargeItemModel> listprofileimglargeItemList;

  LiveChatSummaryModel copyWith(
      {List<ListprofileimglargeItemModel>? listprofileimglargeItemList}) {
    return LiveChatSummaryModel(
      listprofileimglargeItemList:
          listprofileimglargeItemList ?? this.listprofileimglargeItemList,
    );
  }

  @override
  List<Object?> get props => [listprofileimglargeItemList];
}
