import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';

class PushLogin extends StatelessWidget {
  const PushLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "đã có tài khoản? ",
            style: TextStyle(color: Colors.grey),
          ),
          Ges(
            press: (context) {
              Navigator.pushNamed(context, Routes.login);
            },
            child: const Text(
              "đăng nhập",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
