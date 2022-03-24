// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../pages/home_details_page.dart' as _i5;
import '../pages/home_page.dart' as _i4;
import '../pages/profile_details_page.dart' as _i7;
import '../pages/profile_page.dart' as _i6;
import '../pages/profile_settings_page.dart' as _i8;
import 'home_wrapper.dart' as _i2;
import 'main_wrapper.dart' as _i1;
import 'profile_wrapper.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainWrapper.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainWrapper());
    },
    HomeWrapper.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeWrapper());
    },
    ProfileWrapper.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfileWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    HomeDetailsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeDetailsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfileDetailsPage());
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileSettingsPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(MainWrapper.name, path: 'mainWrapper', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: MainWrapper.name,
              redirectTo: 'home',
              fullMatch: true),
          _i9.RouteConfig(HomeWrapper.name,
              path: 'home',
              parent: MainWrapper.name,
              children: [
                _i9.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeWrapper.name),
                _i9.RouteConfig(HomeDetailsRoute.name,
                    path: 'homeDetails', parent: HomeWrapper.name)
              ]),
          _i9.RouteConfig(ProfileWrapper.name,
              path: 'profile',
              parent: MainWrapper.name,
              children: [
                _i9.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileWrapper.name),
                _i9.RouteConfig(ProfileDetailsRoute.name,
                    path: 'profileDetails', parent: ProfileWrapper.name),
                _i9.RouteConfig(ProfileSettingsRoute.name,
                    path: 'profileSettings', parent: ProfileWrapper.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.MainWrapper]
class MainWrapper extends _i9.PageRouteInfo<void> {
  const MainWrapper({List<_i9.PageRouteInfo>? children})
      : super(MainWrapper.name, path: 'mainWrapper', initialChildren: children);

  static const String name = 'MainWrapper';
}

/// generated route for
/// [_i2.HomeWrapper]
class HomeWrapper extends _i9.PageRouteInfo<void> {
  const HomeWrapper({List<_i9.PageRouteInfo>? children})
      : super(HomeWrapper.name, path: 'home', initialChildren: children);

  static const String name = 'HomeWrapper';
}

/// generated route for
/// [_i3.ProfileWrapper]
class ProfileWrapper extends _i9.PageRouteInfo<void> {
  const ProfileWrapper({List<_i9.PageRouteInfo>? children})
      : super(ProfileWrapper.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileWrapper';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.HomeDetailsPage]
class HomeDetailsRoute extends _i9.PageRouteInfo<void> {
  const HomeDetailsRoute() : super(HomeDetailsRoute.name, path: 'homeDetails');

  static const String name = 'HomeDetailsRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.ProfileDetailsPage]
class ProfileDetailsRoute extends _i9.PageRouteInfo<void> {
  const ProfileDetailsRoute()
      : super(ProfileDetailsRoute.name, path: 'profileDetails');

  static const String name = 'ProfileDetailsRoute';
}

/// generated route for
/// [_i8.ProfileSettingsPage]
class ProfileSettingsRoute extends _i9.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(ProfileSettingsRoute.name, path: 'profileSettings');

  static const String name = 'ProfileSettingsRoute';
}
