import 'bloc/task_views_bloc.dart';
import 'models/task_views_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_button.dart';

class TaskViewsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TaskViewsBloc>(
        create: (context) =>
            TaskViewsBloc(TaskViewsState(taskViewsModelObj: TaskViewsModel()))
              ..add(TaskViewsInitialEvent()),
        child: TaskViewsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskViewsBloc, TaskViewsState>(
        builder: (context, state) {
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
                        onTapArrowleft7(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_task_management".tr),
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
                  padding: getPadding(left: 16, top: 33, right: 16, bottom: 33),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(39),
                            width: getHorizontalSize(396),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(38),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_all".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGilroyMedium16BlueA700),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 18),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      38),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          2),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          2),
                                                                  color: ColorConstant
                                                                      .blueA700)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 34,
                                                    top: 3,
                                                    bottom: 16),
                                                child: Text("lbl_on_going".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium16Bluegray400)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 44,
                                                    top: 2,
                                                    bottom: 18),
                                                child: Text("lbl_on_hold".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium16Bluegray400)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 44,
                                                    top: 3,
                                                    bottom: 16),
                                                child: Text("lbl_completed".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium16Bluegray400))
                                          ])),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(bottom: 1),
                                          child: SizedBox(
                                              width: getHorizontalSize(396),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .blueGray100))))
                                ])),
                        Padding(
                            padding: getPadding(top: 30),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 3),
                                      child: Text("lbl_project_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  CustomButton(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(56),
                                      text: "lbl_start".tr,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle.GilroyMedium14)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 3),
                                      child: Text("lbl_project_2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  CustomButton(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(97),
                                      text: "lbl_completed".tr,
                                      variant: ButtonVariant.FillGreen600,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle.GilroyMedium14)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 3),
                                      child: Text("lbl_project_3".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  CustomButton(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(56),
                                      text: "lbl_start".tr,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle.GilroyMedium14)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 3),
                                      child: Text("lbl_project_4".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  CustomButton(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(97),
                                      text: "lbl_completed".tr,
                                      variant: ButtonVariant.FillGreen600,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle.GilroyMedium14)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 3),
                                      child: Text("lbl_project_5".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium18Bluegray900)),
                                  CustomButton(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(56),
                                      text: "lbl_start".tr,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle.GilroyMedium14)
                                ])),
                        Spacer(),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_add_task".tr,
                            margin: getMargin(bottom: 56),
                            padding: ButtonPadding.PaddingAll14)
                      ]))));
    });
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
