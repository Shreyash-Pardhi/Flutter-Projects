import 'package:amazon_clone/common/widgets/bottom_bar.dart';
import 'package:amazon_clone/features/admin/views/add_product_view.dart';
import 'package:amazon_clone/features/auth/views/auth_view.dart';
import 'package:amazon_clone/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthView(),
      );
    case HomeView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeView(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case AddProductView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductView(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Page not found!!!'),
          ),
        ),
      );
  }
}
