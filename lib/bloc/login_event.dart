part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  const LoginEvent();
}

class InputUser extends LoginEvent {
  final String user;
  const InputUser({required this.user}) : super();
}

class InputPass extends LoginEvent {
  final String pass;

  const InputPass({required this.pass});
}

class Failed extends LoginEvent {}
