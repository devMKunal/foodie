import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/constants/asset_constants.dart';
import 'package:foodie/core/constants/color_constants.dart';
import 'package:foodie/core/constants/dimension_constants.dart';
import 'package:foodie/core/constants/string_constants.dart';
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
                  children: <Widget>[
                    Dimens.h100,
                    SvgPicture.asset(AssetConstants.logo),
                    Dimens.h16,
                    Text(
                      StringConstants.deliverFreshFood,
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
              elevation: Dimens.d5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d16,
                  vertical: Dimens.d32,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      StringConstants.login,
                      style: TextstyleConstants.s25w700c000000,
                    ),
                    Dimens.h16,
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: StringConstants.emailHint,
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimens.d10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimens.d10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    Dimens.h16,
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: StringConstants.passwordHint,
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: const Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimens.d10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimens.d10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    Dimens.h16,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          StringConstants.forgotPassword,
                          style: TextstyleConstants.s16w400c000000,
                        ),
                      ),
                    ),
                    Dimens.h20,
                    SizedBox(
                      width: double.infinity,
                      height: Dimens.d50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.cEC2578,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimens.d10),
                          ),
                        ),
                        child: Text(
                          StringConstants.login,
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
          if (MediaQuery.of(context).viewInsets.bottom == Dimens.d0)
            Positioned(
              bottom: Dimens.d40,
              left: Dimens.d115,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    StringConstants.dontHaveAnAccount,
                    style: TextstyleConstants.s16w400c000000,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      StringConstants.registerUpperCase,
                      style: TextstyleConstants.s20w500cEC2578,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
