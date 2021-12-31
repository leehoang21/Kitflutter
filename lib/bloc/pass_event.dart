part of 'pass_bloc.dart';

@immutable
abstract class PassEvent {}

class PassInput extends PassEvent {
  final String pass;
  PassInput({required this.pass});
}

class ChangeOb extends PassEvent {}
