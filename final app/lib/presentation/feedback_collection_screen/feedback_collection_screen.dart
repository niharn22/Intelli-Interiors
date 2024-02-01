import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';

class FeedbackCollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Feedback collection")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 29),
                            child: Text("Dhruv",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("01 Feb 2024, 11:45",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Vitae semper nibh justo, augue commodo.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold16)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae semper nibh justo, augue commodo suspendisse pharetra turpis. Amet, tempus dui urna amet.",
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
                            child: Text("@ABC",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("1 Feb 2024, 12:00",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Vitae semper nibh justo, augue commodo.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold16)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae semper nibh justo, augue commodo suspendisse pharetra turpis. Amet, tempus dui urna amet.",
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
                            child: Text("@ABC",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("1 Feb 2024, 12:00",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Vitae semper nibh justo, augue commodo.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold16)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae semper nibh justo, augue commodo suspendisse pharetra turpis. Amet, tempus dui urna amet.",
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
                            child: Text("@ABC",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("23 may 2022, 12:00",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Container(
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 11, right: 20),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Vitae semper nibh justo, augue commodo.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold16)),
                        Container(
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 6, right: 5),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae semper nibh justo, augue commodo suspendisse pharetra turpis. Amet, tempus dui urna amet.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium14)),
                        Padding(
                            padding: getPadding(top: 46),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100))
                      ]),
                ))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
