import 'package:flutter/material.dart';

class Ges extends StatelessWidget {
  final Function(BuildContext context) press;
  final Widget child;
  const Ges({
    Key? key,
    required this.child,required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(context),
      onDoubleTap:() => press(context),
      onLongPress: () => press(context),
      child: child,
    );
  }
}
