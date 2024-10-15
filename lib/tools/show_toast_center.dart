import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


/// 顶部显示toast
/// 使用: showToastBottom(error);
showToastTop(String msg, {Color? bgColor, bool? toastLength}) async {
  await Fluttertoast.cancel(); //防止toast频繁触发
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.TOP,
      textColor: Colors.white,
      fontSize: 16,
      toastLength: toastLength == true ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      backgroundColor: bgColor ?? const Color(0xff172422));
}


/// 中间显示toast
/// 使用: showToastCenter(error);
showToastCenter(String msg, {Color? bgColor, bool? toastLength}) async {
  await Fluttertoast.cancel(); //防止toast频繁触发
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.CENTER,
      textColor: Colors.white,
      fontSize: 16,
      toastLength: toastLength == true ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      backgroundColor: bgColor ?? const Color(0xff172422));
}

/// 底部显示toast
/// 使用: showToastBottom(error);
showToastBottom(String msg, {Color? bgColor, bool? toastLength}) async {
  await Fluttertoast.cancel(); //防止toast频繁触发
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 16,
      toastLength: toastLength == true ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      backgroundColor: bgColor ?? const Color(0xff172422));
}
