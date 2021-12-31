import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const int _initDuration = 100;
  StreamSubscription _timeSubcription = const Stream.empty().listen((event) {});
  AuthBloc() : super(const AuthInitial(countdown: _initDuration)) {
    on<SendOtpCode>(
      (event, emit) {
        _timeSubcription.cancel();
        _timeSubcription = changeTime(_initDuration).listen(
          (time) {
            add(StarCountdowm(duration: time));
          },
        );
      },
    );
    on<StarCountdowm>((event, emit) {
      if (event.duration > 0) {
        emit(Countdown(countdown: event.duration));
      } else {
        emit(const Completed());
      }
    });
  }

  Stream<int> changeTime(int time) {
    return Stream.periodic(const Duration(seconds: 1), (x) => time - x - 1)
        .take(time);
  }
}
