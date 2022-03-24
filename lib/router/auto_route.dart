import 'package:auto_route/auto_route.dart';
import 'package:demo/pages/home_details_page.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/router/home_wrapper.dart';
import 'package:demo/router/main_wrapper.dart';
import 'package:demo/pages/profile_details_page.dart';
import 'package:demo/pages/profile_page.dart';
import 'package:demo/pages/profile_settings_page.dart';
import 'package:demo/router/profile_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainWrapper,
      path: 'mainWrapper',
      name: 'mainWrapper',
      children: [
        AutoRoute(page: HomeWrapper, path: 'home', initial: true, children: [
          AutoRoute(path: '', page: HomePage),
          AutoRoute(path: 'homeDetails', page: HomeDetailsPage),
        ]),
        AutoRoute(page: ProfileWrapper, path: 'profile', children: [
          AutoRoute(path: '', page: ProfilePage),
          AutoRoute(path: 'profileDetails', page: ProfileDetailsPage),
          AutoRoute(path: 'profileSettings', page: ProfileSettingsPage),
        ])
      ],
    )
  ],
)
class $AppRouter {}
