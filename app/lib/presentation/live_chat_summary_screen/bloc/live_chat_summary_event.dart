// ignore_for_file: must_be_immutable

part of 'live_chat_summary_bloc.dart';

@immutable
abstract class LiveChatSummaryEvent extends Equatable {}

class LiveChatSummaryInitialEvent extends LiveChatSummaryEvent {
  @override
  List<Object?> get props => [];
}
