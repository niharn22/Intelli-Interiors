import 'package:equatable/equatable.dart';
import 'kanbanboard_item_model.dart';

// ignore: must_be_immutable
class KanbanBoardModel extends Equatable {
  KanbanBoardModel({this.kanbanboardItemList = const []});

  List<KanbanboardItemModel> kanbanboardItemList;

  KanbanBoardModel copyWith({List<KanbanboardItemModel>? kanbanboardItemList}) {
    return KanbanBoardModel(
      kanbanboardItemList: kanbanboardItemList ?? this.kanbanboardItemList,
    );
  }

  @override
  List<Object?> get props => [kanbanboardItemList];
}
