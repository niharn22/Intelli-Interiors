// ignore_for_file: must_be_immutable

part of 'live_chat_summary_bloc.dart';

class LiveChatSummaryState extends Equatable {
  LiveChatSummaryState({this.liveChatSummaryModelObj});

  LiveChatSummaryModel? liveChatSummaryModelObj;

  @override
  List<Object?> get props => [
        liveChatSummaryModelObj,
      ];
  LiveChatSummaryState copyWith(
      {LiveChatSummaryModel? liveChatSummaryModelObj}) {
    return LiveChatSummaryState(
      liveChatSummaryModelObj:
          liveChatSummaryModelObj ?? this.liveChatSummaryModelObj,
    );
  }
}
