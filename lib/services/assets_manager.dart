class AssetsManager {
  static const String _assetsPath = 'assets';
  static const String _imagesPath = '$_assetsPath/images';
  static const String _iconsPath = '$_assetsPath/icons';

  static const String _imagesExtension = '.png';
  static const String _iconsExtension = '.svg';

  static String image(String name) => '$_imagesPath/$name$_imagesExtension';
  static String icon(String name) => '$_iconsPath/$name$_iconsExtension';
}
