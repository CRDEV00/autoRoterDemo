// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../pages/home_details_page.dart' as _i7;
import '../pages/home_page.dart' as _i6;
import '../pages/login_page.dart' as _i2;
import '../pages/profile_details_page.dart' as _i9;
import '../pages/profile_page.dart' as _i8;
import '../pages/profile_settings_page.dart' as _i10;
import '../pages/sign_in_page.dart' as _i1;
import 'authentication_guard.dart' as _i13;
import 'home_wrapper.dart' as _i4;
import 'main_wrapper.dart' as _i3;
import 'profile_wrapper.dart' as _i5;

class AppRouter extends _i11.RootStackRouter {
  AppRouter(
      {_i12.GlobalKey<_i12.NavigatorState>? navigatorKey,
      required this.checkIfAuthenticated})
      : super(navigatorKey);

  final _i13.CheckIfAuthenticated checkIfAuthenticated;

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SingIn.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SingInPage());
    },
    Login.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<LoginArgs>(
          orElse: () =>
              LoginArgs(redirectTo: queryParams.optString('redirectTo')));
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, redirectTo: args.redirectTo));
    },
    MainWrapper.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MainWrapperArgs>(
          orElse: () =>
              MainWrapperArgs(redirectTo: queryParams.optString('redirectTo')));
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.MainWrapper(key: args.key, redirectTo: args.redirectTo));
    },
    Home.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeWrapper());
    },
    Profile.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    HomeDetailsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomeDetailsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfileDetailsPage());
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfileSettingsPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig('/#redirect',
            path: '/', redirectTo: 'mainWrapper', fullMatch: true),
        _i11.RouteConfig(SingIn.name, path: 'singIn'),
        _i11.RouteConfig(Login.name, path: 'login'),
        _i11.RouteConfig(MainWrapper.name, path: 'mainWrapper', guards: [
          checkIfAuthenticated
        ], children: [
          _i11.RouteConfig('#redirect',
              path: '',
              parent: MainWrapper.name,
              redirectTo: 'home',
              fullMatch: true),
          _i11.RouteConfig(Home.name,
              path: 'home',
              parent: MainWrapper.name,
              children: [
                _i11.RouteConfig(HomeRoute.name, path: '', parent: Home.name),
                _i11.RouteConfig(HomeDetailsRoute.name,
                    path: 'homeDetails', parent: Home.name)
              ]),
          _i11.RouteConfig(Profile.name,
              path: 'profile',
              parent: MainWrapper.name,
              children: [
                _i11.RouteConfig(ProfileRoute.name,
                    path: '', parent: Profile.name),
                _i11.RouteConfig(ProfileDetailsRoute.name,
                    path: 'profileDetails/:id', parent: Profile.name),
                _i11.RouteConfig(ProfileSettingsRoute.name,
                    path: 'profileSettings', parent: Profile.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SingInPage]
class SingIn extends _i11.PageRouteInfo<void> {
  const SingIn() : super(SingIn.name, path: 'singIn');

  static const String name = 'SingIn';
}

/// generated route for
/// [_i2.LoginPage]
class Login extends _i11.PageRouteInfo<LoginArgs> {
  Login({_i12.Key? key, String? redirectTo})
      : super(Login.name,
            path: 'login',
            args: LoginArgs(key: key, redirectTo: redirectTo),
            rawQueryParams: {'redirectTo': redirectTo});

  static const String name = 'Login';
}

class LoginArgs {
  const LoginArgs({this.key, this.redirectTo});

  final _i12.Key? key;

  final String? redirectTo;

  @override
  String toString() {
    return 'LoginArgs{key: $key, redirectTo: $redirectTo}';
  }
}

/// generated route for
/// [_i3.MainWrapper]
class MainWrapper extends _i11.PageRouteInfo<MainWrapperArgs> {
  MainWrapper(
      {_i12.Key? key, String? redirectTo, List<_i11.PageRouteInfo>? children})
      : super(MainWrapper.name,
            path: 'mainWrapper',
            args: MainWrapperArgs(key: key, redirectTo: redirectTo),
            rawQueryParams: {'redirectTo': redirectTo},
            initialChildren: children);

  static const String name = 'MainWrapper';
}

class MainWrapperArgs {
  const MainWrapperArgs({this.key, this.redirectTo});

  final _i12.Key? key;

  final String? redirectTo;

  @override
  String toString() {
    return 'MainWrapperArgs{key: $key, redirectTo: $redirectTo}';
  }
}

/// generated route for
/// [_i4.HomeWrapper]
class Home extends _i11.PageRouteInfo<void> {
  const Home({List<_i11.PageRouteInfo>? children})
      : super(Home.name, path: 'home', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i5.ProfileWrapper]
class Profile extends _i11.PageRouteInfo<void> {
  const Profile({List<_i11.PageRouteInfo>? children})
      : super(Profile.name, path: 'profile', initialChildren: children);

  static const String name = 'Profile';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.HomeDetailsPage]
class HomeDetailsRoute extends _i11.PageRouteInfo<void> {
  const HomeDetailsRoute() : super(HomeDetailsRoute.name, path: 'homeDetails');

  static const String name = 'HomeDetailsRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.ProfileDetailsPage]
class ProfileDetailsRoute extends _i11.PageRouteInfo<void> {
  const ProfileDetailsRoute()
      : super(ProfileDetailsRoute.name, path: 'profileDetails/:id');

  static const String name = 'ProfileDetailsRoute';
}

/// generated route for
/// [_i10.ProfileSettingsPage]
class ProfileSettingsRoute extends _i11.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(ProfileSettingsRoute.name, path: 'profileSettings');

  static const String name = 'ProfileSettingsRoute';
}
