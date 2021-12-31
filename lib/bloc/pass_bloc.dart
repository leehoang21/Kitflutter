import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'pass_event.dart';
part 'pass_state.dart';

class PassBloc extends Bloc<PassEvent, PassState> {
  PassBloc() : super(const PassInitial()) {
    on<PassInput>(
      (event, emit) {
        checkFormat(event, emit);
      },
    );

    on<ChangeOb>(
      (event, emit) => emit(
        ObscureText(
          obscureText: !state.obscureText,
          errorTextPass: state.errorTextPass,
        ),
      ),
    );
  }

  void checkFormat(event, Emitter<PassState> emit) {
    if (event.pass.length < 8 ||
            !event.pass.contains(RegExp(r'[A-Z]')) ||
            !event.pass.contains(RegExp(r'[a-z]')) //
        ) {
      emit(
        CheckFormat(
          errorTextPass:
              'Mật khẩu phải có ít nhất 8 ký tự, có chữ hoa và chữ thường',
          obscureText: state.obscureText,
        ),
      );
    } else {
      emit(CheckFormat(obscureText: state.obscureText));
    }
  }
}
