import 'package:flutter/material.dart';
import 'package:foodie/core/config/size_config.dart';
import 'package:foodie/presentation/common_widgets/foodie_color_converter.dart';
import 'package:foodie/presentation/login_screen/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    /// converted to material color
    final MaterialColor swatchColor =
        MaterialColor(0xFFEC2578, FoodieColorConverter.color);
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfig.init(context);
            return MaterialApp(
              title: title,
              theme: ThemeData(
                primarySwatch: swatchColor,
              ),
              home: const LoginScreen(),
            );
          },
        );
      },
    );
  }
}
