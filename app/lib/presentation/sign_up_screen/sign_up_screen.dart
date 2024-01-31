import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/core/utils/validation_functions.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_button.dart';
import 'package:intelliinteriors/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(42),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, bottom: 4),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_sign_up".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 36, right: 16, bottom: 36),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_create_your_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold24Bluegray900),
                          Padding(
                              padding: getPadding(top: 31),
                              child: Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.group10198Controller,
                              builder: (context, group10198Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198Controller,
                                    hintText: "msg_enter_first_name".tr,
                                    margin: getMargin(top: 8),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_last_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198OneController,
                              builder: (context, group10198OneController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198OneController,
                                    hintText: "lbl_enter_last_name".tr,
                                    margin: getMargin(top: 7),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("lbl_email_id".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198TwoController,
                              builder: (context, group10198TwoController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198TwoController,
                                    hintText: "lbl_enter_email_id".tr,
                                    margin: getMargin(top: 8),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("lbl_mobile_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198ThreeController,
                              builder: (context, group10198ThreeController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198ThreeController,
                                    hintText: "msg_enter_mobile_number".tr,
                                    margin: getMargin(top: 8),
                                    textInputType: TextInputType.phone,
                                    validator: (value) {
                                      if (!isValidPhone(value)) {
                                        return "Please enter valid phone number";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocBuilder<SignUpBloc, SignUpState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: state.group10198FourController,
                                hintText: "lbl_enter_password".tr,
                                margin: getMargin(top: 7),
                                padding: TextFormFieldPadding.PaddingT12,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<SignUpBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(all: 12),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgEye
                                                : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(44)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: state.isShowPassword);
                          }),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_create_account".tr,
                              margin: getMargin(top: 24, bottom: 5),
                              padding: ButtonPadding.PaddingAll14,
                              onTap: () {
                                registerDeviceAuth(context);
                              })
                        ])))));
  }

  registerDeviceAuth(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignUpBloc>().add(
            CreateRegisterEvent(
              onCreateRegisterEventSuccess: () {
                _onCreateRegisterEventSuccess(context);
              },
              onCreateRegisterEventError: () {
                _onCreateRegisterEventError(context);
              },
            ),
          );
    }
  }

  void _onCreateRegisterEventSuccess(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.budgetingForecastingScreen,
    );
  }

  void _onCreateRegisterEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Something went wrong, Try again.",
    );
  }

  onTapArrowleft10(BuildContext context) {
    NavigatorService.goBack();
  }
}
