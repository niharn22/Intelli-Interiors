// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';
import 'package:intellijinteriors/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

class SignUpScreen extends StatelessWidget {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  TextEditingController group10198TwoController = TextEditingController();

  TextEditingController group10198ThreeController = TextEditingController();

  TextEditingController group10198FourController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                title: AppbarTitle(text: "Sign Up")),
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
                          Text("Create Your Account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold24Bluegray900),
                          Padding(
                              padding: getPadding(top: 31),
                              child: Text("Enter Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: group10198Controller,
                            hintText: "Enter First Name",
                            margin: getMargin(top: 8),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: group10198OneController,
                            hintText: "Enter Last Name",
                            margin: getMargin(top: 7),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                          ),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text(
                                "Email Id",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16,
                              )),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: group10198TwoController,
                            hintText: "Enter Email Id",
                            margin: getMargin(top: 8),
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email Id cannot be empty";
                              } else if (!isValidEmail(value)) {
                                return "Please enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: group10198FourController,
                            hintText: "Enter Password",
                            margin: getMargin(top: 7),
                            padding: TextFormFieldPadding.PaddingT12,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: Container(
                              margin: getMargin(all: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye),
                            ),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(44)),
                            isObscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (!isValidPassword(value)) {
                                return "Please enter a valid password";
                              }
                              return null;
                            },
                          ),
                          CustomButton(
                            height: getVerticalSize(50),
                            text: "Create Account",
                            margin: getMargin(top: 24, bottom: 5),
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SignupLoginModuleScreen(),
                                  ),
                                );
                              }
                            },
                          ),
                        ])))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}

bool isValidPhone(String value) {
  final RegExp phoneRegex = RegExp(r'^[0-9]{10}$');
  return phoneRegex.hasMatch(value);
}

bool isValidPassword(String value) {
  return value.length >= 6;
}

bool isValidEmail(String value) {
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  return emailRegex.hasMatch(value);
}
