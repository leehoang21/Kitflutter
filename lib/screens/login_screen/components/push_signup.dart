import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';

class PushSignup extends StatelessWidget {
  const PushSignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "chưa có tài khoản? ",
          style: TextStyle(color: Colors.grey),
        ),
        Ges(
          press: (context) {
            Navigator.pushNamed(context, Routes.signup);
          },
          child: const Text(
            "dăng ký",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}