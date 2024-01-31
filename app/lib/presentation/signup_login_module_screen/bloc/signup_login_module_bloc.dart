import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:intelliinteriors/presentation/signup_login_module_screen/models/signup_login_module_model.dart';
import 'package:intelliinteriors/data/models/login/post_login_resp.dart';
import 'package:intelliinteriors/data/models/login/post_login_req.dart';
import 'dart:async';
import 'package:intelliinteriors/data/repository/repository.dart';
part 'signup_login_module_event.dart';
part 'signup_login_module_state.dart';

class SignupLoginModuleBloc
    extends Bloc<SignupLoginModuleEvent, SignupLoginModuleState> {
  SignupLoginModuleBloc(SignupLoginModuleState initialState)
      : super(initialState) {
    on<SignupLoginModuleInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<CreateLoginEvent>(_callCreateLogin);
  }

  final _repository = Repository();

  var postLoginResp = PostLoginResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    SignupLoginModuleInitialEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) async {
    emit(state.copyWith(
        group10198Controller: TextEditingController(),
        group10198OneController: TextEditingController(),
        isShowPassword: true,
        isCheckbox: false));
  }

  FutureOr<void> _callCreateLogin(
    CreateLoginEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) async {
    var postLoginReq = PostLoginReq(
      username: state.group10198Controller?.text,
      password: state.group10198OneController?.text,
    );
    await _repository.createLogin(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginReq.toJson(),
    ).then((value) async {
      postLoginResp = value;
      _onCreateLoginSuccess(value, emit);
      event.onCreateLoginEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateLoginError();
      event.onCreateLoginEventError.call();
    });
  }

  void _onCreateLoginSuccess(
    PostLoginResp resp,
    Emitter<SignupLoginModuleState> emit,
  ) {}
  void _onCreateLoginError() {
    //implement error method body...
  }
}
