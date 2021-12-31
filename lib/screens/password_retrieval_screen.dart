import 'package:auth_project/bloc/bloc.dart';
import 'package:auth_project/bloc/passre_bloc.dart';
import 'package:auth_project/bloc/signup_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordRetrievalScreen extends StatelessWidget {
  const PasswordRetrievalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: LoginBloc(),
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(411, 820),
          builder: () {
            return BoxScreen(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Tìm lại mật khẩu',
                    style: TextStyle(
                      fontSize: 25.w,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  // Text(
                  //   context.watch<PassreBloc>().isPhoneorUser ?
                  //   null : ,
                  //   style: TextStyle(
                  //     color: Colors.red,
                  //   ),
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Nhập tên tài khoản hoặc số điện thoại để tìm lại mật khẩu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      bottom: 20.h,
                    ),
                    child: RoundedInputField(
                      onChanged: (value) {
                        //context.read<PassreBloc>().add(Input(user: value));
                      },
                      hintText: 'Nhập tên tài khoản , số điện thoại',
                    ),
                  ),
                  RoundedButton(
                    text: 'Gửi yêu cầu',
                    press: (context) {
                      //context.read<PassreBloc>().add(SendRequire());
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
