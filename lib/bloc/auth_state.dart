part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
  final int countdown;

  const AuthState({required this.countdown});
}

class AuthInitial extends AuthState {
  const AuthInitial({required int countdown}) : super(countdown: countdown);
}

class Countdown extends AuthState {
  const Countdown({required int countdown}) : super(countdown: countdown);
}

class Completed extends AuthState {
  const Completed() : super(countdown: 0);
}
