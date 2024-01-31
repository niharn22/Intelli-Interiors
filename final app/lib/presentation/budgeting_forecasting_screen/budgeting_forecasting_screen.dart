import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:intellijinteriors/presentation/gantt_chart_screen/gantt_chart_screen.dart';
import '../budgeting_forecasting_screen/widgets/listcheckmark_item_widget.dart';
import 'package:intellijinteriors/core/app_export.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intellijinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intellijinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intellijinteriors/widgets/custom_checkbox.dart';

class BudgetingForecastingScreen extends StatelessWidget {
  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 225, 178, 234),
        appBar: CustomAppBar(
          height: getVerticalSize(53),
          leadingWidth: 40,
          leading: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgMenu,
                margin: getMargin(left: 16, top: 12, bottom: 17),
              ),
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Budgeting & Forecasting",
          ),
          actions: [
            AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(left: 16, top: 12, right: 16, bottom: 17),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Intelli Interiors',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(202, 249, 143, 255),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Implement the action when Home is tapped
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Analytics'),
                onTap: () {
                  // Implement the action when Analytics is tapped
                 Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GanttChartScreen()));
                },
              ),
              ListTile(
                title: Text('Rooms'),
                onTap: () {
                  // Implement the action when Rooms is tapped
                  Navigator.pop(context);
                },
              ),

               ListTile(
                title: Text('Communication Hub'),
                onTap: () {
                  // Implement the action when Rooms is tapped
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
                Container(
                  height: getVerticalSize(183),
                  width: getHorizontalSize(396),
                  margin: getMargin(top: 20),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: getHorizontalSize(396),
                          margin: getMargin(bottom: 61),
                          padding: getPadding(
                            left: 24,
                            top: 16,
                            right: 24,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup1062,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(top: 2, bottom: 22),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Balance:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium14WhiteA700,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(top: 2),
                                        child: Text(
                                          "40,241",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyBold36,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(right: 25, bottom: 26),
                                child: Container(
                                  height: getSize(62),
                                  width: getSize(62),
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                    backgroundColor:
                                        ColorConstant.whiteA70067,
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(174),
                              padding: getPadding(
                                left: 16,
                                top: 14,
                                right: 16,
                                bottom: 14,
                              ),
                              decoration: AppDecoration.outlineGray70011
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weekly Budget",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtGilroyMedium14Green600,
                                  ),
                                  CustomCheckbox(
                                    width: getHorizontalSize(142),
                                    text: "4125.24",
                                    value: isCheckbox,
                                    margin: getMargin(top: 11, bottom: 1),
                                    fontStyle: CheckboxFontStyle.GilroyBold24,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      isCheckbox = value;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(174),
                              margin: getMargin(left: 16),
                              padding: getPadding(
                                left: 16,
                                top: 15,
                                right: 16,
                                bottom: 15,
                              ),
                              decoration: AppDecoration.outlineGray70011
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Expenses",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtGilroyMedium14Red700,
                                  ),
                                  Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                      children: [
                                        Text(
                                          "1740.24",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyBold24,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowgrowthoutlineRed700,
                                          height: getSize(24),
                                          width: getSize(24),
                                          margin: getMargin(
                                            left: 22,
                                            top: 2,
                                            bottom: 3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(top: 29),
                  child: Text(
                    "Recent Transaction",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold18Black900,
                  ),
                ),
                Padding(
                  padding: getPadding(top: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (String itemName in [
                        "Cement - Rs 350",
                        "Paint -  Rs 1500",
                        "Wood - Rs 200",
                        "Lights - Rs 2000",
                        "Steel - Rs 1000 "
                      ])
                        Container(
                          margin: getMargin(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListcheckmarkItemWidget(),
                              ),
                              SizedBox(width: getHorizontalSize(20)),
                              Expanded(
                                child: Text(
                                  
                                  itemName,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium14Black900.copyWith(
                                    fontSize: 16, // Adjust the font size as needed
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
