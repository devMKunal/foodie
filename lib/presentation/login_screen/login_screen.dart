import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/constants/asset_constants.dart';
import 'package:foodie/core/constants/color_constants.dart';
import 'package:foodie/core/constants/dimension_constants.dart';
import 'package:foodie/core/constants/textstyle_constants.dart';
import 'package:foodie/core/extensions/extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: Dimens.d58.percentHeight(context),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstants.cEC2578,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                      Dimens.d100.percentWidth(context),
                      Dimens.d60,
                    ),
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 100),
                    SvgPicture.asset(AssetConstants.logo),
                    const SizedBox(height: 16),
                    Text(
                      'Deliver Fresh Food',
                      style: TextstyleConstants.s20w700cFFFFFF.copyWith(
                        color: ColorConstants.cFFFFFF,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: Dimens.d300,
            left: Dimens.d32,
            right: Dimens.d32,
            child: Card(
              elevation: 5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextstyleConstants.s25w700c000000,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                        prefixIcon: const Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: const Icon(Icons.visibility_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextstyleConstants.s16w400c000000,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.cEC2578,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextstyleConstants.s16w400c000000.copyWith(
                            color: ColorConstants.cFFFFFF,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: Dimens.d300,
          //   child: Column(
          //     children: <Widget>[
          //       const SizedBox(height: 40),
          //       Card(
          //         // padding: const EdgeInsets.all(20),
          //         // decoration: BoxDecoration(
          //         //   color: Colors.white,
          //         //   borderRadius: BorderRadius.circular(20),
          //         //   boxShadow: <BoxShadow>[
          //         //     BoxShadow(
          //         //       color: Colors.black.withOpacity(0.1),
          //         //       blurRadius: 10,
          //         //       spreadRadius: 5,
          //         //     ),
          //         //   ],
          //         // ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          // Text(
          //   'Login',
          //   style: TextstyleConstants.s25w700c000000,
          // ),
          //             const SizedBox(height: 20),
          //             // SizedBox(
          //             //   width: double.maxFinite,
          //             //   child: TextField(
          //             //     decoration: InputDecoration(
          //             //       hintText: 'example@gmail.com',
          //             //       prefixIcon: const Icon(Icons.person_outline),
          //             //       border: OutlineInputBorder(
          //             //         borderRadius: BorderRadius.circular(10),
          //             //       ),
          //             //       enabledBorder: OutlineInputBorder(
          //             //         borderRadius: BorderRadius.circular(10),
          //             //         borderSide: BorderSide(
          //             //           color: Colors.grey.shade300,
          //             //         ),
          //             //       ),
          //             //     ),
          //             //   ),
          //             // ),

          //             const SizedBox(height: 20),
          //             // SizedBox(
          //             //   width: double.maxFinite,
          //             //   child: TextField(
          //             //     obscureText: true,
          //             //     decoration: InputDecoration(
          //             //       hintText: 'Password',
          //             //       prefixIcon: const Icon(Icons.lock_outline),
          //             //       suffixIcon: const Icon(Icons.visibility_outlined),
          //             //       border: OutlineInputBorder(
          //             //         borderRadius: BorderRadius.circular(10),
          //             //       ),
          //             //       enabledBorder: OutlineInputBorder(
          //             //         borderRadius: BorderRadius.circular(10),
          //             //         borderSide: BorderSide(
          //             //           color: Colors.grey.shade300,
          //             //         ),
          //             //       ),
          //             //     ),
          //             //   ),
          //             // ),

          //             const SizedBox(height: 10),
          //             Align(
          //               alignment: Alignment.centerRight,
          //               child: TextButton(
          //                 onPressed: () {},
          //                 child: Text(
          //                   'Forget Password?',
          //                   style: TextstyleConstants.s16w400c000000,
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(height: 20),
          //             SizedBox(
          //               width: double.infinity,
          //               height: 50,
          //               child: ElevatedButton(
          //                 onPressed: () {},
          //                 style: ElevatedButton.styleFrom(
          //                   backgroundColor: ColorConstants.cEC2578,
          //                   shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(10),
          //                   ),
          //                 ),
          //                 child: Text(
          //                   'Login',
          //                   style: TextstyleConstants.s16w400c000000.copyWith(
          //                     color: ColorConstants.cFFFFFF,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 20),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: <Widget>[
          //           Text(
          //             "Don't have an account? ",
          //             style: TextstyleConstants.s16w400c000000,
          //           ),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text(
          //               'REGISTER',
          //               style: TextstyleConstants.s16w700cEC2578,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
