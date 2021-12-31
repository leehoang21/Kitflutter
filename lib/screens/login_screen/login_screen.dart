import '/bloc/bloc.dart';
import 'components/login_components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: LoginBloc(),
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(411, 820),
          builder: () {
            return BoxScreen(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                ),
                child: Column(
                  children: [
                    Text(
                      loginSuccess(context),
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    RoundedInputField(
                      onChanged: (user) {
                        context.read<LoginBloc>().add(InputUser(user: user));
                      },
                      hintText: "tài khoản : tên bạn",
                    ),
                    RoundedPasswordField(
                      hintText: 'mật khẩu : Kitflutter',
                      onPressed: (context) {
                        context.read<PassBloc>().add(ChangeOb());
                      },
                      obscureText: context.read<PassBloc>().state.obscureText,
                      onChanged: (pass) {
                        context.read<PassBloc>().add(PassInput(pass: pass));
                        context.read<LoginBloc>().add(InputPass(pass: pass));
                      },
                      errorText: context.watch<PassBloc>().state.errorTextPass,
                    ),
                    const ForgotPassword(),
                    SizedBox(
                      height: 30.h,
                    ),
                    RoundedButton(
                      text: "Đăng nhập",
                      press: (context) {
                        if (context.read<LoginBloc>().state is LoginSuccess) {
                          Navigator.pushNamed(context, Routes.home);
                        } else {
                          context.read<LoginBloc>().add(Failed());
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const PushSignup(),
                    const LoginWith(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  String loginSuccess(BuildContext context) {
    if (context.watch<LoginBloc>().state is LoginFailed) {
      return 'tài khoản hoặc mật khẩu của bạn không đúng';
    } else {
      return '';
    }
  }
}
