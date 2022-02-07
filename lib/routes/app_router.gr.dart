// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i9;

import '../auth/signin_page.dart' as _i1;
import '../auth/signup_page.dart' as _i2;
import '../books/book_details_page.dart' as _i6;
import '../books/book_list_page.dart' as _i5;
import '../home/home_page.dart' as _i3;
import '../profile/edit_profile_page.dart' as _i8;
import '../profile/profile_page.dart' as _i7;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    BooksRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    BookListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.BookListPage());
    },
    BookDetailsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.BookDetailsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    },
    EditProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EditProfilePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SignInRoute.name, path: '/'),
        _i4.RouteConfig(SignUpRoute.name, path: 'sign-up'),
        _i4.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i4.RouteConfig(BooksRouter.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(BookListRoute.name,
                    path: '', parent: BooksRouter.name),
                _i4.RouteConfig(BookDetailsRoute.name,
                    path: 'details', parent: BooksRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: BooksRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i4.RouteConfig(EditProfileRoute.name,
                    path: 'details', parent: ProfileRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class BooksRouter extends _i4.PageRouteInfo<void> {
  const BooksRouter({List<_i4.PageRouteInfo>? children})
      : super(BooksRouter.name, path: 'books', initialChildren: children);

  static const String name = 'BooksRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter({List<_i4.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.BookListPage]
class BookListRoute extends _i4.PageRouteInfo<void> {
  const BookListRoute() : super(BookListRoute.name, path: '');

  static const String name = 'BookListRoute';
}

/// generated route for
/// [_i6.BookDetailsPage]
class BookDetailsRoute extends _i4.PageRouteInfo<void> {
  const BookDetailsRoute() : super(BookDetailsRoute.name, path: 'details');

  static const String name = 'BookDetailsRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.EditProfilePage]
class EditProfileRoute extends _i4.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: 'details');

  static const String name = 'EditProfileRoute';
}
