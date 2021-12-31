part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  const LoginState();
}

class InitialState extends LoginState {}

class LoginFailed extends LoginState {
  const LoginFailed() : super();
}

class LoginSuccess extends LoginState {
  const LoginSuccess() : super();
}
