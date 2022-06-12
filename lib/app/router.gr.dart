// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/startup/startup_view.dart' as _i1;

class Routes extends _i3.RootStackRouter {
  Routes([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RouteView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupView());
    },
    HomeView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(RouteView.name, path: '/'),
        _i3.RouteConfig(HomeView.name, path: '/home-view')
      ];
}

/// generated route for
/// [_i1.StartupView]
class RouteView extends _i3.PageRouteInfo<void> {
  const RouteView() : super(RouteView.name, path: '/');

  static const String name = 'RouteView';
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i3.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}
