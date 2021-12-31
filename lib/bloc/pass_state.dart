part of 'pass_bloc.dart';

@immutable
abstract class PassState {
  final String? errorTextPass;
  final bool obscureText;

  const PassState({
    this.errorTextPass,
    required this.obscureText,
  });
}

class PassInitial extends PassState {
  const PassInitial() : super(obscureText: false);
}

class CheckFormat extends PassState {
  const CheckFormat({
    required bool obscureText,
    String? errorTextPass,
  }) : super(
          obscureText: obscureText,
          errorTextPass: errorTextPass,
        );
}

class ObscureText extends PassState {
  const ObscureText({
    String? errorTextPass,
    required bool obscureText,
  }) : super(
          errorTextPass: errorTextPass,
          obscureText: obscureText,
        );
}
