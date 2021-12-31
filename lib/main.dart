import 'package:auth_project/bloc/signup_bloc.dart';
import 'package:auth_project/screens/signup_screen/components/rules.dart';

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
      BlocProvider<PassBloc2>(
        create: (context) => PassBloc2(),
      ),
      BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(),
      ),
      BlocProvider<SignupBloc>(
        create: (context) => SignupBloc(),
      ),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.signup,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.rules:
            return MaterialPageRoute(builder: (_) => const Rules());
          case Routes.signup:
            return MaterialPageRoute(builder: (_) => const SignUpScreen());
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
          case Routes.home:
            return MaterialPageRoute(builder: (_) => const Home());
          default:
            return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      },
    ),
  ));
}
