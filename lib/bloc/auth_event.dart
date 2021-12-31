part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SendOtpCode extends AuthEvent {}

class StarCountdowm extends AuthEvent {
  final int duration;

  StarCountdowm({required this.duration});
}
