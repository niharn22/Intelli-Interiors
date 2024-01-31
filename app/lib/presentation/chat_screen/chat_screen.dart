import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_icon_button.dart';

class ChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(50),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 13, bottom: 13),
                      onTap: () {
                        onTapArrowleft9(context);
                      }),
                  title: Padding(
                      padding: getPadding(left: 11),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                  height: getSize(50),
                                  width: getSize(50),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse350x501,
                                            height: getSize(50),
                                            width: getSize(50),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(25)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: getSize(12),
                                                width: getSize(12),
                                                margin: getMargin(
                                                    left: 38, top: 38),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.green600,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                6)),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        width:
                                                            getHorizontalSize(
                                                                1)))))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 3, bottom: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("lbl_danial_sams".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold18Bluegray900)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, right: 60),
                                                child: Text("lbl_online".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular14)))
                                      ]))
                            ])
                          ])),
                  actions: [
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgOverflowmenu,
                        margin:
                            getMargin(left: 16, top: 13, right: 16, bottom: 13))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 1),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Container(
                            width: getHorizontalSize(268),
                            margin: getMargin(top: 23),
                            padding: getPadding(
                                left: 24, top: 13, right: 24, bottom: 13),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgUnion),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(213),
                                      child: Text("msg_hi_jake_how_are".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium14Black900))
                                ])),
                        Padding(
                            padding: getPadding(top: 7),
                            child: Text("msg_yesterday_2_01pm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular12)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: getHorizontalSize(268),
                                margin: getMargin(top: 18),
                                padding: getPadding(
                                    left: 31, top: 11, right: 31, bottom: 11),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup3616),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(182),
                                          margin: getMargin(top: 2),
                                          child: Text("msg_haha_truly_nice".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium14Black900))
                                    ]))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(top: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_3_02_pm".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyRegular12)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgAirplane,
                                          height: getSize(16),
                                          width: getSize(16),
                                          margin: getMargin(left: 4))
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 23),
                                child: Text("lbl_today".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyRegular14))),
                        Container(
                            height: getVerticalSize(46),
                            width: getHorizontalSize(170),
                            margin: getMargin(top: 16),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUnion,
                                  height: getVerticalSize(46),
                                  width: getHorizontalSize(170),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_sure_let_s_do_it".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtGilroyMedium14Black900))
                            ])),
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text("lbl_3_02_pm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular12)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                margin: getMargin(top: 19),
                                padding: getPadding(
                                    left: 31, top: 11, right: 31, bottom: 11),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup3615),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(201),
                                          margin: getMargin(top: 2),
                                          child: Text(
                                              "msg_great_i_will_write".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium14Black900))
                                    ]))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(top: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_3_02_pm".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyRegular12)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgAirplane,
                                          height: getSize(16),
                                          width: getSize(16),
                                          margin: getMargin(left: 4))
                                    ]))),
                        Spacer(),
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.blueGray100)
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 16, right: 16, bottom: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                padding: getPadding(
                                    left: 16, top: 13, right: 16, bottom: 13),
                                decoration: AppDecoration.outlineBluegray1001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgUser20x20,
                                          height: getSize(20),
                                          width: getSize(20)),
                                      Padding(
                                          padding: getPadding(left: 16, top: 3),
                                          child: Text("msg_your_message".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium14Bluegray400)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgPlus,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(left: 117)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMicrophone,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(left: 16))
                                    ]))),
                        CustomIconButton(
                            height: 48,
                            width: 48,
                            margin: getMargin(left: 4),
                            variant: IconButtonVariant.OutlineBluegray100,
                            child:
                                CustomImageView(svgPath: ImageConstant.imgSend))
                      ]))));
    });
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
