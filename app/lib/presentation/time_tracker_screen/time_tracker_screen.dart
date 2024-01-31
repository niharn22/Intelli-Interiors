import 'bloc/time_tracker_bloc.dart';
import 'models/time_tracker_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_button.dart';

class TimeTrackerScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TimeTrackerBloc>(
        create: (context) => TimeTrackerBloc(
            TimeTrackerState(timeTrackerModelObj: TimeTrackerModel()))
          ..add(TimeTrackerInitialEvent()),
        child: TimeTrackerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeTrackerBloc, TimeTrackerState>(
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
                      margin: getMargin(left: 16, top: 12, bottom: 13),
                      onTap: () {
                        onTapArrowleft8(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_time_tracker".tr),
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
                            text: "lbl_04_55_19".tr,
                            margin: getMargin(left: 8, right: 8),
                            variant: ButtonVariant.OutlineBlueA700,
                            padding: ButtonPadding.PaddingAll14,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 2, top: 1),
                                      child: Text("msg_today_s_total_time".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16)),
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_5_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16))
                                ])),
                        Padding(
                            padding: getPadding(left: 8, top: 26),
                            child: Text("lbl_project_s_list".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGilroySemiBold18Bluegray900)),
                        Padding(
                            padding: getPadding(left: 8, top: 29, right: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_project_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("lbl_04_55".tr,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_project_2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray400)),
                                  Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("lbl_00_05".tr,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_project_3".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray400)),
                                  Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("lbl_00_00".tr,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_project_4".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray400)),
                                  Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("lbl_00_00".tr,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_project_5".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray400)),
                                  Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("lbl_00_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium16Bluegray400))
                                ]))
                      ]))));
    });
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
