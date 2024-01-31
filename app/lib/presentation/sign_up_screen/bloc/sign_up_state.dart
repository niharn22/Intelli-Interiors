// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.group10198Controller,
    this.group10198OneController,
    this.group10198TwoController,
    this.group10198ThreeController,
    this.group10198FourController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  TextEditingController? group10198TwoController;

  TextEditingController? group10198ThreeController;

  TextEditingController? group10198FourController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        group10198TwoController,
        group10198ThreeController,
        group10198FourController,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    TextEditingController? group10198TwoController,
    TextEditingController? group10198ThreeController,
    TextEditingController? group10198FourController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      group10198TwoController:
          group10198TwoController ?? this.group10198TwoController,
      group10198ThreeController:
          group10198ThreeController ?? this.group10198ThreeController,
      group10198FourController:
          group10198FourController ?? this.group10198FourController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
