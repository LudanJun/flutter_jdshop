//  Container(
//      child: Image.asset(
//      AssetTools.getAssetImagePNG("my_bg"),
//    ),
//  )

class AssetTools {
  static getAssetImage(String iconName, {bool isPNG = true}) {
    return isPNG
        ? 'assets/images/$iconName.png'
        : 'assets/images/$iconName.jpg';
  }

  static getAssetImagePNG(String iconName) {
    return 'assets/images/$iconName.png';
  }

  static getAssetImageJPG(String iconName) {
    return 'assets/images/$iconName.jpg';
  }
}
