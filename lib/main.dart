import 'package:flutter/material.dart';
import 'package:flutter_jdshop/routes/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334), //配置设计稿的宽度高度
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, //去掉debug图标
          initialRoute: '/',
          onGenerateRoute: onGenerateRoute,
          //  themeMode = ThemeMode.system
          theme: ThemeData(
            primaryColor: Colors.red,
            splashColor: Colors.transparent, //全局去掉按钮涟漪效果
            highlightColor: Colors.transparent, //设置高亮颜色为透明
          ),
        );
      },
    );
  }
}
