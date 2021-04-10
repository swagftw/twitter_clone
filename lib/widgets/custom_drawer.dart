import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/styles.dart';
import '../auth/twitter_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12.w),
                width: double.infinity,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: SizedBox(
                        height: 64.w,
                        width: 64.w,
                        child: context.read(userProvider).state?.photoURL ==
                                null
                            ? Container()
                            : Image.network(
                                context.read(userProvider).state?.photoURL ??
                                    "https://dummyimage.com/600x400/728394/ffffff&text=+",
                                fit: BoxFit.cover,
                                errorBuilder: (_, e, __) {
                                  return Container();
                                },
                              ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            context.read(userProvider).state?.displayName ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: headingStyle.copyWith(fontSize: 16.ssp)),
                        Text(context
                                .read(sharePrefProvider)
                                .state
                                ?.getString("name") ??
                            "")
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 2),
                        blurRadius: 4)
                  ],
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black12)),
              child: ListTile(
                title: Text("Log out"),
                onTap: () async {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text(
                              "Sure you want to log out?",
                              style: TextStyle(
                                  fontSize: 16.ssp,
                                  fontWeight: FontWeight.w500),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Cancel")),
                              TextButton(
                                  onPressed: () async {
                                    await context
                                        .read(twitterAuthProvider)
                                        .signOut();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Ok"))
                            ],
                          ));
                },
                leading: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.exit_to_app),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
