import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jdshop/pages/tabs/cart.dart';
import 'package:flutter_jdshop/pages/tabs/category.dart';
import 'package:flutter_jdshop/pages/tabs/home.dart';
import 'package:flutter_jdshop/pages/tabs/user.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  final List _pageList = const [
    HomePage(),
    CategoryPage(),
    CartPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      appBar: AppBar(
        title: const Text("jdshop"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, //类型：底部导航栏类型固定
        unselectedItemColor: Color(0xFF606266), //未选中的颜色
        selectedItemColor: Color.fromRGBO(17, 150, 219, 1), //选中tab颜色
        currentIndex: _currentIndex,
         onTap: (index) {
          setState(
            () {
              if (_currentIndex != index) {
                _currentIndex = index;
              }
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分类",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "购物车",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "我的",
          ),
        ],
      ),
    );
  }
}
