// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $page1Route,
    ];

GoRoute get $page1Route => GoRouteData.$route(
      path: '/page1',
      factory: $Page1RouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'page2',
          factory: $Page2RouteExtension._fromState,
        ),
      ],
    );

extension $Page1RouteExtension on Page1Route {
  static Page1Route _fromState(GoRouterState state) => const Page1Route();

  String get location => GoRouteData.$location(
        '/page1',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $Page2RouteExtension on Page2Route {
  static Page2Route _fromState(GoRouterState state) => const Page2Route();

  String get location => GoRouteData.$location(
        '/page1/page2',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
