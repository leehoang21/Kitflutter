import '/bloc/bloc.dart';
import '/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      builder: () {
        return BlocBuilder<PassBloc, PassState>(
          bloc: PassBloc(),
          builder: (context, state) {
            return BoxScreen(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Đổi mật khẩu',
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
                    onPressed: (context) {
                      context.read<PassBloc>().add(ChangeOb());
                    },
                    obscureText: context.read<PassBloc>().state.obscureText,
                    onChanged: (pass) {
                      context.read<PassBloc>().add(PassInput(pass: pass));
                    },
                    hintText: 'Mật khẩu mới',
                    errorText: context.watch<PassBloc>().state.errorTextPass,
                  ),
                  RoundedPasswordField(
                    onPressed: (context) {
                      context.read<PassBloc2>().add(ChangeOb());
                    },
                    obscureText: context.read<PassBloc2>().state.obscureText,
                    onChanged: (pass) {
                      context.read<PassBloc2>().add(PassInput(pass: pass));
                    },
                    hintText: 'nhập lại mật khẩu',
                    errorText: context.watch<PassBloc2>().state.errorTextPass,
                  ),
                  SizedBox(height: 20.h),
                  RoundedButton(
                    text: 'Tạo mật khẩu',
                    press: (context) {},
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
