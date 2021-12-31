import '/screens/signup_screen/components/rules.dart';
import 'components/components.dart';
import '/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
      ),
      BlocProvider<PassBloc>(
        create: (context) => PassBloc(),
      ),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.login,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.home:
            return MaterialPageRoute(builder: (_) => const Home());
          case Routes.auth:
            return MaterialPageRoute(builder: (_) => const Authentication());
          case Routes.changePass:
            return MaterialPageRoute(
                builder: (_) => const ChangePasswordScreen());
          case Routes.creadPass:
            return MaterialPageRoute(
                builder: (_) => const CreatePasswordScreen());
          case Routes.passRe:
            return MaterialPageRoute(
                builder: (_) => const PasswordRetrievalScreen());
          case Routes.rules:
            return MaterialPageRoute(builder: (_) => const Rules());
          case Routes.signup:
            return MaterialPageRoute(builder: (_) => const SignUpScreen());
          default:
            return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      },
    ),
  ));
}
