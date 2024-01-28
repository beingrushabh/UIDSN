import 'package:flutter/material.dart';
import 'package:rushabh_s_application/presentation/login_screen/login_screen.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/community_page_screen/community_page_screen.dart';
import '../presentation/post_screen/post_screen.dart';

class AppRoutes {
  static const String postScreen = '/post_screen';

  static const String communityPageScreen = '/community_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String loginScreen = '/login_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes =>
      {loginScreen: LoginScreen.builder,
        postScreen: PostScreen.builder,
        communityPageScreen: CommunityPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AppNavigationScreen.builder};
}
