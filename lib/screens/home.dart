import 'package:auth_project/components/box_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoxScreen(
      child: Scaffold(
        appBar: AppBar(),
        body: const Text(
          'chào mừng mọi người đến màn hình home nha!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
