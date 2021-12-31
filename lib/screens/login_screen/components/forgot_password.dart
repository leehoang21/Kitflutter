import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.8, 0),
      child: Ges(
        press: (context) {
          Navigator.pushNamed(context, Routes.passRe);
        },
        child: const Text(
          'quên mật khẩu?',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
