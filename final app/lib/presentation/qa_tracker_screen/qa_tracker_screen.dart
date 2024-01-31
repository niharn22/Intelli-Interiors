import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';

class QaTrackerScreen extends StatelessWidget {
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
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "QA Tracker")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 9),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineGray7000c
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgProfileimglarge40x401,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(20)),
                                                  margin: getMargin(
                                                      top: 2, bottom: 2)),
                                              Container(
                                                  width: getHorizontalSize(175),
                                                  margin: getMargin(
                                                      left: 8, top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "Top Secret: v3.0 release",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroySemiBold16Black900),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text("iOS",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyBold14))
                                                      ])),
                                              Spacer(),
                                              Container(
                                                  width: getHorizontalSize(70),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgTicket,
                                                                  height:
                                                                      getSize(
                                                                          16),
                                                                  width:
                                                                      getSize(
                                                                          16)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4),
                                                                  child: Text(
                                                                      "85 Ticket",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroyMedium12))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgSave,
                                                                      height:
                                                                          getSize(
                                                                              16),
                                                                      width: getSize(
                                                                          16)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              4),
                                                                      child: Text(
                                                                          "60 Points",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium12))
                                                                ]))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(110),
                                                  padding: getPadding(
                                                      left: 30,
                                                      top: 6,
                                                      right: 35,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlueA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder15),
                                                  child: Text("Ticket",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyRegular14BlueA700)),
                                              Container(
                                                  width: getHorizontalSize(111),
                                                  padding: getPadding(
                                                      left: 30,
                                                      top: 6,
                                                      right: 33,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlueA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder15),
                                                  child: Text("Details",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyRegular14BlueA700)),
                                              Container(
                                                  width: getHorizontalSize(111),
                                                  padding: getPadding(
                                                      left: 30,
                                                      top: 4,
                                                      right: 31,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlueA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder15),
                                                  child: Text("Activity",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyRegular14BlueA700))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Delivered",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium14BlueA700)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("Silde drawer project navigation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Navigation, iOS, needs design",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular16)),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(112),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x402,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x403,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(left: 24)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x404,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight,
                                margin: getMargin(right: 24)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9440x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight)
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Delivered",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium14BlueA700)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("Silde drawer project navigation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Navigation, iOS, needs design",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular16)),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(112),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x402,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x403,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(left: 24)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x404,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight,
                                margin: getMargin(right: 24)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9440x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight)
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Delivered",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium14BlueA700)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("Silde drawer project navigation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Navigation, iOS, needs design",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular16)),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(112),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x402,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x403,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(left: 24)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x404,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight,
                                margin: getMargin(right: 24)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9440x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight)
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Delivered",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium14BlueA700)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("Silde drawer project navigation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Navigation, iOS, needs design",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular16)),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(112),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x402,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x403,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(left: 24)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgProfileimglarge40x404,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight,
                                margin: getMargin(right: 24)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9440x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.centerRight)
                          ]))
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
