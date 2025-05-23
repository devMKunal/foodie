part of 'extensions.dart';

extension PercentSizeExtension on num {
  double percentHeight(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return (this / 100) * screenHeight;
  }

  double percentWidth(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return (this / 100) * screenWidth;
  }
}
