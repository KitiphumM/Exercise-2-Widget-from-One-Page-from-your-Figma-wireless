import '../search_page/widgets/restaurantcard_item_widget.dart';
import '../search_page/widgets/three_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kitiphum_s_restaurant_search/core/app_export.dart';
import 'package:kitiphum_s_restaurant_search/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchRow(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "Recent",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 25.v),
              _buildRestaurantCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder1,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 34.v),
          Row(
            children: [
              Expanded(
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 11.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "Cancel",
                  style: CustomTextStyles.bodyLargeInterWhiteA700,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Wrap(
            runSpacing: 13.v,
            spacing: 13.h,
            children: List<Widget>.generate(3, (index) => ThreeItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRestaurantCard(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 36.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.v),
              child: SizedBox(
                width: 315.h,
                child: Divider(
                  height: 2.v,
                  thickness: 2.v,
                  color: appTheme.black900,
                ),
              ),
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return RestaurantcardItemWidget();
          },
        ),
      ),
    );
  }
}
