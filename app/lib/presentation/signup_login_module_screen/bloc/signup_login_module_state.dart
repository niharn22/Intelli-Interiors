// ignore_for_file: must_be_immutable

part of 'signup_login_module_bloc.dart';

class SignupLoginModuleState extends Equatable {
  SignupLoginModuleState({
    this.group10198Controller,
    this.group10198OneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signupLoginModuleModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  SignupLoginModuleModel? signupLoginModuleModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        isShowPassword,
        isCheckbox,
        signupLoginModuleModelObj,
      ];
  SignupLoginModuleState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignupLoginModuleModel? signupLoginModuleModelObj,
  }) {
    return SignupLoginModuleState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signupLoginModuleModelObj:
          signupLoginModuleModelObj ?? this.signupLoginModuleModelObj,
    );
  }
}
