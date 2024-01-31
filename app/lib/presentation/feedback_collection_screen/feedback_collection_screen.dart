import 'bloc/feedback_collection_bloc.dart';
import 'models/feedback_collection_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';

class FeedbackCollectionScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FeedbackCollectionBloc>(
        create: (context) => FeedbackCollectionBloc(FeedbackCollectionState(
            feedbackCollectionModelObj: FeedbackCollectionModel()))
          ..add(FeedbackCollectionInitialEvent()),
        child: FeedbackCollectionScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackCollectionBloc, FeedbackCollectionState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(48),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 12, bottom: 12),
                      onTap: () {
                        onTapArrowleft2(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "msg_feedback_collection".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 29),
                            child: Text("lbl_abc".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("msg_23_may_2022_12_00".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGilroySemiBold16Bluegray900)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text("msg_lorem_ipsum_dolor3".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_abc".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("msg_23_may_2022_12_00".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGilroySemiBold16Bluegray900)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text("msg_lorem_ipsum_dolor3".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_abc".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("msg_23_may_2022_12_00".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGilroySemiBold16Bluegray900)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text("msg_lorem_ipsum_dolor3".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_abc".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("msg_23_may_2022_12_00".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGilroySemiBold16Bluegray900)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text("msg_lorem_ipsum_dolor3".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Padding(
                            padding: getPadding(top: 46),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100))
                      ]))));
    });
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
