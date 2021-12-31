import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/components.dart';
import 'package:flutter/material.dart';

const imagesBgLogin = AssetImage(ImagesPath.login);

class BoxScreen extends StatelessWidget {
  final Widget child;
  const BoxScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(imagesBgLogin, context);
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      builder: () {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: imagesBgLogin,
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0, -0.8),
                child: Image.asset(
                  IconsPath.home,
                ),
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Align(
                  alignment: const Alignment(0, 0.5),
                  child: Container(
                    width: Scsize.width * 0.9,
                    height: Scsize.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
