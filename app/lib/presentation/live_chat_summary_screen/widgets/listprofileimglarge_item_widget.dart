import '../models/listprofileimglarge_item_model.dart';
import 'package:flutter/material.dart';
import 'package:intelliinteriors/core/app_export.dart';

// ignore: must_be_immutable
class ListprofileimglargeItemWidget extends StatelessWidget {
  ListprofileimglargeItemWidget(this.listprofileimglargeItemModelObj);

  ListprofileimglargeItemModel listprofileimglargeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgProfileimglarge50x504,
          height: getSize(
            50,
          ),
          width: getSize(
            50,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              25,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      listprofileimglargeItemModelObj.friendsGroupTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold18Bluegray900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 151,
                      bottom: 6,
                    ),
                    child: Text(
                      listprofileimglargeItemModelObj.timeTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyRegular14,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                  right: 21,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        listprofileimglargeItemModelObj.landonMosbyHiiiiTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyRegular14,
                      ),
                    ),
                    Container(
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        left: 171,
                        bottom: 2,
                      ),
                      padding: getPadding(
                        left: 2,
                        top: 1,
                        right: 2,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillBlueA700.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder8,
                      ),
                      child: Text(
                        listprofileimglargeItemModelObj.group9838Txt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroySemiBold10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
