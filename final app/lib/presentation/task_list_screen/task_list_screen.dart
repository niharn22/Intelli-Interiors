import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';
import 'package:intellijinteriors/widgets/custom_floating_button.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "My Tasks"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu1,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 17))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24),
                              child: Text("This Week",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroySemiBold20))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 31),
                              child: Text("Monday, 12th May",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroySemiBold16BlueA700))),
                      Container(
                          margin: getMargin(left: 16, top: 18, right: 16),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3, bottom: 1),
                                    child: Text("Buy groceries ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold16Gray90001)),
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(85),
                                    text: "High Priority",
                                    margin: getMargin(bottom: 1),
                                    variant: ButtonVariant.FillGray100,
                                    padding: ButtonPadding.PaddingAll3,
                                    fontStyle: ButtonFontStyle.GilroyMedium12)
                              ])),
                      Container(
                          margin: getMargin(left: 16, top: 16, right: 16),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("Cardio at 6 pm",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold16Gray90001)),
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(81),
                                    text: "Low Priority",
                                    margin: getMargin(bottom: 1),
                                    variant: ButtonVariant.FillDeeporangeA10033,
                                    padding: ButtonPadding.PaddingAll3,
                                    fontStyle: ButtonFontStyle
                                        .GilroyMedium12Deeporange400)
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 28),
                              child: Text("Wednesday, 14th May",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroySemiBold16BlueA700))),
                      Container(
                          margin: getMargin(left: 16, top: 17, right: 16),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 2),
                                    child: Text("Dinner with Bae ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold16Gray90001)),
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(85),
                                    text: "High Priority",
                                    margin: getMargin(bottom: 1),
                                    variant: ButtonVariant.FillGray100,
                                    padding: ButtonPadding.PaddingAll3,
                                    fontStyle: ButtonFontStyle.GilroyMedium12)
                              ])),
                      Container(
                          margin: getMargin(
                              left: 16, top: 16, right: 16, bottom: 377),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("Pay College Fees",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold16Gray90001)),
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(81),
                                    text: "Low Priority",
                                    margin: getMargin(bottom: 1),
                                    variant: ButtonVariant.FillDeeporangeA10033,
                                    padding: ButtonPadding.PaddingAll3,
                                    fontStyle: ButtonFontStyle
                                        .GilroyMedium12Deeporange400)
                              ]))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 60,
                width: 60,
                child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                    height: getVerticalSize(30.0),
                    width: getHorizontalSize(30.0)))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
