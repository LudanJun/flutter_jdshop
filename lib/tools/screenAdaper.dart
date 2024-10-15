import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdaper {
  static height(num value) {
    return ScreenUtil().setHeight(value);
  }

  static width(num value) {
    return ScreenUtil().setWidth(value);
  }

  static size(num value) {
    return ScreenUtil().setSp(value);
  }

  ///获取设备的物理宽度
  static getScreenWidth() {
    return ScreenUtil().screenWidth;
  }

  ///获取设备的物理高度
  static getScreenHeight() {
    return ScreenUtil().screenHeight;
  }
}
