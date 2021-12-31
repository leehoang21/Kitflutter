import 'package:auth_project/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

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
                'Xác thực mã OTP',
                style: TextStyle(
                  fontSize: 25.w,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                'Mã xác thực đã được gửi đến số điện thoại 0987654321',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  activeColor: Colors.grey,
                  disabledColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.grey,
                  errorBorderColor: Colors.grey,
                  activeFillColor: Colors.grey,
                  inactiveFillColor: Colors.grey,
                  selectedFillColor: Colors.grey,
                  fieldHeight: 70.w,
                  fieldWidth: 70.h,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                ),
                appContext: context,
                length: 4,
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Mã hết hiệu lực sau'),
                  Text(
                    ' ${92}s',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: const Alignment(0, 0.6),
                  child: RoundedButton(
                      text: 'Gửi lại mã OTP', press: (context) {}),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
