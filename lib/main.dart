import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'main.g.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(routes: $appRoutes);

@TypedGoRoute<Page1Route>(
  path: '/page1',
  routes: [
    TypedGoRoute<Page2Route>(path: 'page2'),
  ],
)
class Page1Route extends GoRouteData {
  const Page1Route();
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('1'),
    );
  }
}

class Page2Route extends GoRouteData {
  const Page2Route();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('2'),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}
