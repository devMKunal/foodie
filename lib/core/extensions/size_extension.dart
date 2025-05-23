part of 'extensions.dart';

extension SizeExtension on num {
  double get w => this * SizeConfig.scaleWidth;
  double get h => this * SizeConfig.scaleHeight;
}
