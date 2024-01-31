import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';

class GanttChartScreen extends StatelessWidget {
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
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Gantt chart")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(222),
                              width: getHorizontalSize(375),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(222),
                                            width: getHorizontalSize(345),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFrame9987,
                                                      height:
                                                          getVerticalSize(184),
                                                      width: getHorizontalSize(
                                                          313),
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        200),
                                                                child: VerticalDivider(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .blueGray100)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            10),
                                                                child: Text(
                                                                    "0 days",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtGilroyMedium10))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 52),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            200),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "5 days",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroyMedium10))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 101),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            200),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "10 days",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroyMedium10))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 154,
                                                              right: 156),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            200),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "15 days",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroyMedium10))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 103),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            200),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "20 days",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroyMedium10))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 52),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            200),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "25 days",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroyMedium10))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        200),
                                                                child: VerticalDivider(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .blueGray100)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 10),
                                                                child: Text(
                                                                    "25 days",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtGilroyMedium10))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 5, bottom: 6),
                                                        child: Text("Task 5",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyMedium10)),
                                                    Container(
                                                        height:
                                                            getVerticalSize(24),
                                                        width:
                                                            getHorizontalSize(
                                                                78),
                                                        margin: getMargin(
                                                            left: 251),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueA700,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            3))))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 16, right: 78),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 6),
                                                            child: Text(
                                                                "Task 4",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyMedium10)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    79),
                                                            margin: getMargin(
                                                                left: 172),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .blueA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(3))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 6),
                                                            child: Text(
                                                                "Task 3",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyMedium10)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    71),
                                                            margin: getMargin(
                                                                left: 102),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .blueA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(3))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 6),
                                                            child: Text(
                                                                "Task 2",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyMedium10)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    49),
                                                            margin: getMargin(
                                                                left: 53),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .blueA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(3))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 16),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 6),
                                                            child: Text(
                                                                "Task 1",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyMedium10)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    37),
                                                            margin: getMargin(
                                                                left: 16),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .blueA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(3))))
                                                      ]))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Gantt chart",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium18)),
                      Container(
                          width: getHorizontalSize(375),
                          margin: getMargin(top: 21, right: 20, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "",
                                    style: TextStyle(
                                        color:
                                            ColorConstant.fromHex("#ff74839d"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "",
                                    style: TextStyle(
                                        color:
                                            ColorConstant.fromHex("#ff74839d"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Done",
                margin: getMargin(left: 12, right: 16, bottom: 71))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
