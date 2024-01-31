import 'bloc/gantt_chart_bloc.dart';
import 'models/gantt_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_button.dart';

class GanttChartScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GanttChartBloc>(
        create: (context) => GanttChartBloc(
            GanttChartState(ganttChartModelObj: GanttChartModel()))
          ..add(GanttChartInitialEvent()),
        child: GanttChartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GanttChartBloc, GanttChartState>(
        builder: (context, state) {
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
                  title: AppbarTitle(text: "lbl_gantt_chart".tr)),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFrame9987,
                                                        height: getVerticalSize(
                                                            184),
                                                        width:
                                                            getHorizontalSize(
                                                                313),
                                                        alignment: Alignment
                                                            .topCenter),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
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
                                                                      "lbl_0_days"
                                                                          .tr,
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
                                                        alignment: Alignment
                                                            .centerLeft,
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
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.blueGray100)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_5_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
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
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.blueGray100)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_10_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium10))
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
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.blueGray100)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_15_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
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
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.blueGray100)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_20_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
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
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.blueGray100)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_25_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGilroyMedium10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
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
                                                                      "lbl_25_days"
                                                                          .tr,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5,
                                                              bottom: 6),
                                                          child: Text(
                                                              "lbl_task_5".tr,
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
                                                                  78),
                                                          margin: getMargin(
                                                              left: 251),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
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
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          6),
                                                              child: Text(
                                                                  "lbl_task_4"
                                                                      .tr,
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
                                                                  color: ColorConstant
                                                                      .blueA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3))))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          6),
                                                              child: Text(
                                                                  "lbl_task_3"
                                                                      .tr,
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
                                                                  color: ColorConstant
                                                                      .blueA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3))))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          6),
                                                              child: Text(
                                                                  "lbl_task_2"
                                                                      .tr,
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
                                                                  color: ColorConstant
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
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          6),
                                                              child: Text(
                                                                  "lbl_task_1"
                                                                      .tr,
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
                                                                  color: ColorConstant
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
                            child: Text("lbl_gantt_chart".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium18)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 21, right: 20, bottom: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis sit tortor nibh diam velit tempor, mi. Risus non facilisis pellentesque a."
                                              .tr,
                                      style: TextStyle(
                                          color: ColorConstant.fromHex(
                                              "#ff74839d"),
                                          fontSize: getFontSize(16),
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                              .tr,
                                      style: TextStyle(
                                          color: ColorConstant.fromHex(
                                              "#ff74839d"),
                                          fontSize: getFontSize(16),
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(50),
                  text: "lbl_done".tr,
                  margin: getMargin(left: 12, right: 16, bottom: 71),
                  padding: ButtonPadding.PaddingAll14)));
    });
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
