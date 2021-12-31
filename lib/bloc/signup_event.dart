part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class PressTermsOfUse extends SignupEvent {}

class InputPhone extends SignupEvent {
  final String phone;

  InputPhone({required this.phone});
}
