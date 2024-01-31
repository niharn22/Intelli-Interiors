// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({this.chatModelObj});

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        chatModelObj,
      ];
  ChatState copyWith({ChatModel? chatModelObj}) {
    return ChatState(
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
