// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../pages/home_details_page.dart' as _i6;
import '../pages/home_page.dart' as _i5;
import '../pages/login_page.dart' as _i1;
import '../pages/profile_details_page.dart' as _i8;
import '../pages/profile_page.dart' as _i7;
import '../pages/profile_settings_page.dart' as _i9;
import 'home_wrapper.dart' as _i3;
import 'main_wrapper.dart' as _i2;
import 'profile_wrapper.dart' as _i4;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    Login.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<LoginArgs>(
          orElse: () =>
              LoginArgs(redirectTo: queryParams.optString('redirectTo')));
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.LoginPage(key: args.key, redirectTo: args.redirectTo));
    },
    MainWrapper.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MainWrapperArgs>(
          orElse: () =>
              MainWrapperArgs(redirectTo: queryParams.optString('redirectTo')));
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.MainWrapper(key: args.key, redirectTo: args.redirectTo));
    },
    HomeWrapper.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeWrapper());
    },
    ProfileWrapper.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfileWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    HomeDetailsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomeDetailsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileDetailsPage());
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfileSettingsPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig('/#redirect',
            path: '/', redirectTo: 'mainWrapper', fullMatch: true),
        _i10.RouteConfig(Login.name, path: 'login'),
        _i10.RouteConfig(MainWrapper.name, path: 'mainWrapper', children: [
          _i10.RouteConfig('#redirect',
              path: '',
              parent: MainWrapper.name,
              redirectTo: 'home',
              fullMatch: true),
          _i10.RouteConfig(HomeWrapper.name,
              path: 'home',
              parent: MainWrapper.name,
              children: [
                _i10.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeWrapper.name),
                _i10.RouteConfig(HomeDetailsRoute.name,
                    path: 'homeDetails', parent: HomeWrapper.name)
              ]),
          _i10.RouteConfig(ProfileWrapper.name,
              path: 'profile',
              parent: MainWrapper.name,
              children: [
                _i10.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileWrapper.name),
                _i10.RouteConfig(ProfileDetailsRoute.name,
                    path: 'profileDetails/:id', parent: ProfileWrapper.name),
                _i10.RouteConfig(ProfileSettingsRoute.name,
                    path: 'profileSettings', parent: ProfileWrapper.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class Login extends _i10.PageRouteInfo<LoginArgs> {
  Login({_i11.Key? key, String? redirectTo})
      : super(Login.name,
            path: 'login',
            args: LoginArgs(key: key, redirectTo: redirectTo),
            rawQueryParams: {'redirectTo': redirectTo});

  static const String name = 'Login';
}

class LoginArgs {
  const LoginArgs({this.key, this.redirectTo});

  final _i11.Key? key;

  final String? redirectTo;

  @override
  String toString() {
    return 'LoginArgs{key: $key, redirectTo: $redirectTo}';
  }
}

/// generated route for
/// [_i2.MainWrapper]
class MainWrapper extends _i10.PageRouteInfo<MainWrapperArgs> {
  MainWrapper(
      {_i11.Key? key, String? redirectTo, List<_i10.PageRouteInfo>? children})
      : super(MainWrapper.name,
            path: 'mainWrapper',
            args: MainWrapperArgs(key: key, redirectTo: redirectTo),
            rawQueryParams: {'redirectTo': redirectTo},
            initialChildren: children);

  static const String name = 'MainWrapper';
}

class MainWrapperArgs {
  const MainWrapperArgs({this.key, this.redirectTo});

  final _i11.Key? key;

  final String? redirectTo;

  @override
  String toString() {
    return 'MainWrapperArgs{key: $key, redirectTo: $redirectTo}';
  }
}

/// generated route for
/// [_i3.HomeWrapper]
class HomeWrapper extends _i10.PageRouteInfo<void> {
  const HomeWrapper({List<_i10.PageRouteInfo>? children})
      : super(HomeWrapper.name, path: 'home', initialChildren: children);

  static const String name = 'HomeWrapper';
}

/// generated route for
/// [_i4.ProfileWrapper]
class ProfileWrapper extends _i10.PageRouteInfo<void> {
  const ProfileWrapper({List<_i10.PageRouteInfo>? children})
      : super(ProfileWrapper.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileWrapper';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.HomeDetailsPage]
class HomeDetailsRoute extends _i10.PageRouteInfo<void> {
  const HomeDetailsRoute() : super(HomeDetailsRoute.name, path: 'homeDetails');

  static const String name = 'HomeDetailsRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.ProfileDetailsPage]
class ProfileDetailsRoute extends _i10.PageRouteInfo<void> {
  const ProfileDetailsRoute()
      : super(ProfileDetailsRoute.name, path: 'profileDetails/:id');

  static const String name = 'ProfileDetailsRoute';
}

/// generated route for
/// [_i9.ProfileSettingsPage]
class ProfileSettingsRoute extends _i10.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(ProfileSettingsRoute.name, path: 'profileSettings');

  static const String name = 'ProfileSettingsRoute';
}
