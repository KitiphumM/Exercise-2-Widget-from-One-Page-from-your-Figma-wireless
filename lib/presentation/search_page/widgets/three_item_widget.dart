import 'package:flutter/material.dart' hide SearchController;
import 'package:kitiphum_s_restaurant_search/core/app_export.dart';

// ignore: must_be_immutable
class ThreeItemWidget extends StatelessWidget {
  const ThreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "All",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Sofia Sans',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.indigo100,
      selectedColor: appTheme.indigo100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
