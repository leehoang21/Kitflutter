import '/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      builder: () {
        return BoxScreen(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Text(
                'Tạo mật khẩu',
                style: TextStyle(
                  fontSize: 25.w,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                'Mật khẩu phải có ít nhất 8 ký tự , có chữ hoa và chữ thường',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              RoundedPasswordField(
                onPressed: (context) {},
                onChanged: (pass) {},
                errorText: null,
                obscureText: true,
              ),
              RoundedPasswordField(
                obscureText: true,
                onPressed: (context) {},
                onChanged: (pass) {},
                hintText: 'nhập lại mật khẩu',
                errorText: null,
              ),
              Expanded(
                child: Align(
                  alignment: const Alignment(0, 0.5),
                  child: RoundedButton(
                    text: 'Tạo mật khẩu',
                    press: (context) {},
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
