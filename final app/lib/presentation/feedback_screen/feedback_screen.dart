import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';
import 'package:intellijinteriors/widgets/custom_text_form_field.dart';

import '../feedback_collection_screen/feedback_collection_screen.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedbackScreen extends StatelessWidget {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController textPlaceholderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 13),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Feedback")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Title",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: inputFieldController,
                                hintText: "Enter Title",
                                margin: getMargin(top: 7))
                          ]),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("Message",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: textPlaceholderController,
                          hintText: "Write message...",
                          margin: getMargin(top: 6),
                          padding: TextFormFieldPadding.PaddingT16,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 30, right: 7, bottom: 7),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEdit)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(190)),
                          maxLines: 9),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Give Feedback",
                          onTap: () {
                            Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FeedbackCollectionScreen()));
                          },
                          margin: getMargin(bottom: 65))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
