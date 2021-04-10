import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_client/auth/twitter_auth.dart';
import 'package:twitter_client/pages/tweet_profile.dart';
import 'package:twitter_client/styles.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return AppBar(
      toolbarHeight: 88.h,
      backgroundColor: Colors.white,
      elevation: 2,
      shadowColor: Colors.black26,
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(left: 22.w),
        child: InkWell(
          highlightColor: Colors.transparent,
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: SvgPicture.asset(
            "assets/images/twitter.svg",
          ),
        ),
      ),
      title: Text(
        "Home",
        style: headingStyle.copyWith(
            fontWeight: FontWeight.w600, fontSize: bodyFontSize),
      ),
      actions: [
        InkWell(
          onTap: () async {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => TweetProfile()));
          },
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: ClipRRect(
              child: context.read(userProvider).state?.photoURL == null
                  ? Container()
                  : Image.network(
                      context.read(userProvider).state?.photoURL ??
                          "https://dummyimage.com/600x400/728394/ffffff&text=+",
                      fit: BoxFit.fitWidth,
                      errorBuilder: (_, e, __) {
                        return Container();
                      },
                    ),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(88.h);
}
