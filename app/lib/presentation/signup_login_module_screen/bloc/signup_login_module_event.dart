// ignore_for_file: must_be_immutable

part of 'signup_login_module_bloc.dart';

@immutable
abstract class SignupLoginModuleEvent extends Equatable {}

class SignupLoginModuleInitialEvent extends SignupLoginModuleEvent {
  @override
  List<Object?> get props => [];
}

class CreateLoginEvent extends SignupLoginModuleEvent {
  CreateLoginEvent({
    required this.onCreateLoginEventSuccess,
    required this.onCreateLoginEventError,
  });

  Function onCreateLoginEventSuccess;

  Function onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

class FacebookAuthEvent extends SignupLoginModuleEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignupLoginModuleEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignupLoginModuleEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SignupLoginModuleEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
