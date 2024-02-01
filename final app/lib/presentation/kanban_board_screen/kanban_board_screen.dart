import '../kanban_board_screen/widgets/kanbanboard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_button.dart';

class KanbanBoardScreen extends StatelessWidget {
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
              onTapArrowleft6(context);
            },
          ),
          centerTitle: true,
          title: AppbarTitle(text: "Kanban Board"),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(52),
                width: getHorizontalSize(396),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: getMargin(bottom: 2),
                        padding: getPadding(
                          left: 29,
                          top: 14,
                          right: 29,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.outlineBluegray100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(top: 2),
                              child: Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400,
                              ),
                            ),
                            Padding(
                              padding: getPadding(left: 62, bottom: 1),
                              child: Text(
                                "In Review",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(left: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "To Do",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16BlueA700,
                            ),
                            Padding(
                              padding: getPadding(top: 17),
                              child: SizedBox(
                                width: getHorizontalSize(62),
                                child: Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 22),
                child: Expanded(
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(24));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return KanbanboardItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(50),
          text: "Add Card",
          margin: getMargin(left: 16, right: 16, bottom: 40),
          padding: ButtonPadding.PaddingT14,
          prefixWidget: Container(
            margin: getMargin(right: 11),
            child: CustomImageView(
              svgPath: ImageConstant.imgPlusWhiteA700,
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
