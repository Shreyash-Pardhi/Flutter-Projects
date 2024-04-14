import 'package:amazon_clone/features/auth/views/auth_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthView.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthView(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Page not found!!!'),
          ),
        ),
      );
  }
}
