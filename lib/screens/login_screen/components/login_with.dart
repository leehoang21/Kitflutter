import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      builder: () {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Scsize.width * 0.8,
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(),
                  ),
                  Text(
                    'hoặc đăng nhập với',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Ges(
                  press: (context) {},
                  child: Image.asset(IconsPath.google),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Ges(
                  press: (context) {},
                  child: Image.asset(IconsPath.facebook),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
