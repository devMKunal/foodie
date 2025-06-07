import 'package:flutter/widgets.dart';
import 'package:foodie/core/constants/dimension_constants.dart';

class SizeConfig {
  static late double _screenWidth;
  static late double _screenHeight;
  static double baseWidth = Dimens.d375;
  static double baseHeight = Dimens.d812;

  static late double scaleWidth;
  static late double scaleHeight;

  static void init(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    _screenWidth = mediaQueryData.size.width;
    _screenHeight = mediaQueryData.size.height;

    scaleWidth = _screenWidth / baseWidth;
    scaleHeight = _screenHeight / baseHeight;
  }
}
