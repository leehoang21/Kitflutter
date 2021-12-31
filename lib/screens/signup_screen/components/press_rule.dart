import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';

class PressRules extends StatelessWidget {
  const PressRules({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          value: false,
          onChanged: (value) {},
        ),
        const Text('tôi đã đọc kĩ'),
        Ges(
          child: const Text(
            ' điều khoản',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          press: (context) {
            Navigator.pushNamed(context, Routes.rules);
          },
        ),
        const Text(' sử dụng'),
      ],
    );
  }
}
