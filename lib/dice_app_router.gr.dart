// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'dice/ui/dice_roll_page.dart' as _i1;
import 'history/ui/history_page.dart' as _i2;

class DiceAppRouter extends _i3.RootStackRouter {
  DiceAppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Dice.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.WrappedRoute(child: _i1.DiceRollScreen()));
    },
    History.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.WrappedRoute(child: _i2.HistoryScreen()));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(Dice.name, path: '/'),
        _i3.RouteConfig(History.name, path: 'history')
      ];
}

/// generated route for
/// [_i1.DiceRollScreen]
class Dice extends _i3.PageRouteInfo<void> {
  const Dice() : super(Dice.name, path: '/');

  static const String name = 'Dice';
}

/// generated route for
/// [_i2.HistoryScreen]
class History extends _i3.PageRouteInfo<void> {
  const History() : super(History.name, path: 'history');

  static const String name = 'History';
}
