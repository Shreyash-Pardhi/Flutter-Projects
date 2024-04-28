import 'package:amazon_clone/common/widgets/bottom_bar.dart';
import 'package:amazon_clone/features/admin/views/add_product_view.dart';
import 'package:amazon_clone/features/auth/views/auth_view.dart';
import 'package:amazon_clone/features/home/views/category_deals_view.dart';
import 'package:amazon_clone/features/home/views/home_view.dart';
import 'package:amazon_clone/features/productdetails/views/product_details_view.dart';
import 'package:amazon_clone/features/search/views/search_view.dart';
import 'package:amazon_clone/models/product.dart';
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
    case CategoryDealsView.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsView(
          category: category,
        ),
      );
    case SearchView.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchView(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailsView.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailsView(
          product: product,
        ),
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
