part of 'signup_bloc.dart';

@immutable
abstract class SignupState {
  final bool isPhone;
  final bool isOKTermsOfUse;
  const SignupState({this.isPhone = false, required this.isOKTermsOfUse});
}

class SignupInitial extends SignupState {
  const SignupInitial() : super(isOKTermsOfUse: false);
}

class OKTermsOfUse extends SignupState {
  const OKTermsOfUse({required bool isOKTermsOfUse})
      : super(isOKTermsOfUse: !isOKTermsOfUse);
}

class CheckPhone extends SignupState {
  const CheckPhone({
    required bool isPhone,
    required bool isOKTermsOfUse,
  }) : super(
          isPhone: isPhone,
          isOKTermsOfUse: isOKTermsOfUse,
        );
}
