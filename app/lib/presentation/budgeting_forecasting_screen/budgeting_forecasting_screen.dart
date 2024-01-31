import '../budgeting_forecasting_screen/widgets/listcheckmark_item_widget.dart';
import 'bloc/budgeting_forecasting_bloc.dart';
import 'models/budgeting_forecasting_model.dart';
import 'models/listcheckmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:intelliinteriors/core/app_export.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_image.dart';
import 'package:intelliinteriors/widgets/app_bar/appbar_title.dart';
import 'package:intelliinteriors/widgets/app_bar/custom_app_bar.dart';
import 'package:intelliinteriors/widgets/custom_checkbox.dart';

class BudgetingForecastingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<BudgetingForecastingBloc>(
      create: (context) => BudgetingForecastingBloc(BudgetingForecastingState(
        budgetingForecastingModelObj: BudgetingForecastingModel(),
      ))
        ..add(BudgetingForecastingInitialEvent()),
      child: BudgetingForecastingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 12,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "msg_budgeting_forecasting".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
                bottom: 17,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  183,
                ),
                width: getHorizontalSize(
                  396,
                ),
                margin: getMargin(
                  top: 20,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: getHorizontalSize(
                          396,
                        ),
                        margin: getMargin(
                          bottom: 61,
                        ),
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
                              padding: getPadding(
                                top: 2,
                                bottom: 22,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_total_balance".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium14WhiteA700,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_40_241".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyBold36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                right: 25,
                                bottom: 26,
                              ),
                              child: Container(
                                height: getSize(
                                  62,
                                ),
                                width: getSize(
                                  62,
                                ),
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                  backgroundColor: ColorConstant.whiteA70067,
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
                            width: getHorizontalSize(
                              174,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 14,
                              right: 16,
                              bottom: 14,
                            ),
                            decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_total_income".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium14Green600,
                                ),
                                BlocSelector<BudgetingForecastingBloc,
                                    BudgetingForecastingState, bool?>(
                                  selector: (state) => state.isCheckbox,
                                  builder: (context, isCheckbox) {
                                    return CustomCheckbox(
                                      width: getHorizontalSize(
                                        142,
                                      ),
                                      text: "lbl_4125_24".tr,
                                      value: isCheckbox,
                                      margin: getMargin(
                                        top: 11,
                                        bottom: 1,
                                      ),
                                      fontStyle: CheckboxFontStyle.GilroyBold24,
                                      isRightCheck: true,
                                      onChange: (value) {
                                        context
                                            .read<BudgetingForecastingBloc>()
                                            .add(ChangeCheckBoxEvent(
                                                value: value));
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              174,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 15,
                              right: 16,
                              bottom: 15,
                            ),
                            decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_total_expenses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium14Red700,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "lbl_1740_24".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyBold24,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowgrowthoutlineRed700,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
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
                padding: getPadding(
                  top: 29,
                ),
                child: Text(
                  "msg_recent_transaction".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18Black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: BlocSelector<BudgetingForecastingBloc,
                    BudgetingForecastingState, BudgetingForecastingModel?>(
                  selector: (state) => state.budgetingForecastingModelObj,
                  builder: (context, budgetingForecastingModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: budgetingForecastingModelObj
                              ?.listcheckmarkItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        ListcheckmarkItemModel model =
                            budgetingForecastingModelObj
                                    ?.listcheckmarkItemList[index] ??
                                ListcheckmarkItemModel();
                        return ListcheckmarkItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
