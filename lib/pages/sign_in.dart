import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:twitter_client/auth/twitter_auth.dart';
import 'package:twitter_client/styles.dart';

class SignIn extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final twitterAuth = watch(twitterAuthProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenUtil.defaultSize.height / 10,
                ),
                AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: SvgPicture.asset(
                      "assets/images/twitter.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "\"I Am All Ears\"",
                  style: headingStyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Container(
                      width: double.infinity,
                      height: 48.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: accentColor,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: TextButton(
                          onPressed: () async {
                            await twitterAuth.login();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              Text(
                                "Hop in",
                                style: buttonTextStyle,
                              ),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: accentColor,
                              )
                            ],
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
