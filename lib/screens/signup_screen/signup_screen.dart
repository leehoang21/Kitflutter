import 'components/signup_compnents.dart';
import '/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      builder: () {
        return BoxScreen(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Đăng kí tài khoản',
                  style: TextStyle(
                    fontSize: 25.w,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'nhập số điện thoại của bạn để đăng kí',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                RoundedInputField(
                  errorText: null,
                  hintText: 'nhập số điện thoại',
                  icon: Icons.call,
                  onChanged: (phone) {},
                ),
                const PressRules(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RoundedButton(text: 'gửi mã OTP', press: (context) {}),
                      const PushLogin(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
