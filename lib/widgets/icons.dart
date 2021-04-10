import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TweetIcons extends StatelessWidget {
  final int? count;
  final String icon;
  const TweetIcons({Key? key, this.count, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print(icon);
        },
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/$icon.svg",
              height: 16.h,
              color: Colors.grey,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(count == null ? " " : count.toString()),
          ],
        ));
  }
}
