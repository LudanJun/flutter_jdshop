//配置路由
import 'package:flutter/material.dart';
import 'package:flutter_jdshop/pages/ProductList.dart';
import 'package:flutter_jdshop/pages/search.dart';
import 'package:flutter_jdshop/pages/tabs/tabs.dart';

final Map<String, Function> routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const SearchPage(),
  '/productList': (context, {arguments}) =>
      ProductListPage(arguments: arguments),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
