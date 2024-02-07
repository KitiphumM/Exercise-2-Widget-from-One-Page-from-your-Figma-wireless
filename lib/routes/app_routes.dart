import 'package:flutter/material.dart';
import 'package:kitiphum_s_restaurant_search/presentation/search_container_screen/search_container_screen.dart';
import 'package:kitiphum_s_restaurant_search/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchPage = '/search_page';

  static const String searchContainerScreen = '/search_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    searchContainerScreen: (context) => SearchContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
