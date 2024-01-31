import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';

class TimeTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 13),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Time Tracker"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu1,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 8, top: 24, right: 8, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "04:55:19",
                          margin: getMargin(left: 8, right: 8),
                          variant: ButtonVariant.OutlineBlueA700,
                          fontStyle: ButtonFontStyle.GilroyMedium16BlueA700),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getSize(50),
                              width: getSize(50),
                              margin: getMargin(top: 29),
                              decoration: BoxDecoration(
                                  color: ColorConstant.blueA700))),
                      Container(
                          margin: getMargin(left: 7, top: 29, right: 9),
                          padding: getPadding(
                              left: 14, top: 18, right: 14, bottom: 18),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(left: 2, top: 1),
                                    child: Text("Today’s Total Time",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("5:00",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16))
                              ])),
                      Padding(
                          padding: getPadding(left: 8, top: 26),
                          child: Text("Project’s List",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(left: 8, top: 29, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Project 1",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray900)),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("04:55",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(8),
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(left: 8, top: 20, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Project 2",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("00:05",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(8),
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(left: 8, top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Project 3",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("00:00",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(8),
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(left: 8, top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Project 4",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("00:00",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(8),
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(left: 8, top: 20, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Project 5",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("00:00",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ]))
                    ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
