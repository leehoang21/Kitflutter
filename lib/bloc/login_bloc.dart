import '/components/components.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String user = '';
  String pass = '';
  LoginBloc() : super(InitialState()) {
    on<InputPass>(
      (event, emit) {
        pass = event.pass;
        login(emit);
      },
    );
    on<InputUser>(
      (event, emit) {
        user = event.user;
        login(emit);
      },
    );
    on<Failed>((event, emit) {
      emit(const LoginFailed());
    });
  }

  void login(Emitter<LoginState> emit) {
    var flag = false;
    for (var i = 0; i < User.user.length; i++) {
      if (User.user[i] == user && User.pass[i] == pass) {
        emit(const LoginSuccess());
        flag = true;
      }
    }
    if (!flag) {
      emit(InitialState());
    }
  }
}
