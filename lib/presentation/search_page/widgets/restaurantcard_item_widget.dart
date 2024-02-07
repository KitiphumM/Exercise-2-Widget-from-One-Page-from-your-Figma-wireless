import 'package:flutter/material.dart' hide SearchController;
import 'package:kitiphum_s_restaurant_search/core/app_export.dart';

// ignore: must_be_immutable
class RestaurantcardItemWidget extends StatelessWidget {
  const RestaurantcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 255.h,
            margin: EdgeInsets.only(bottom: 12.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHistory,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    bottom: 3.v,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "YumKhunMae Restaurant",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "106 Street Tuamae RD soi 88",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Open ~ Closes 21:00",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgStarOutline,
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 30.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgInformation,
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.fromLTRB(16.h, 11.v, 19.h, 32.v),
          ),
        ],
      ),
    );
  }
}
