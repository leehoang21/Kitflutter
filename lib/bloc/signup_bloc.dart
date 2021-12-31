import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupInitial()) {
    on<PressTermsOfUse>((event, emit) {
      emit(
        OKTermsOfUse(
          isOKTermsOfUse: state.isOKTermsOfUse,
        ),
      );
    });
    on<InputPhone>((event, emit) {
      emit(
        CheckPhone(
          isPhone: isPhone(event),
          isOKTermsOfUse: state.isOKTermsOfUse,
        ),
      );
    });
  }

  bool isPhone(InputPhone event) {
    if (event.phone.contains('0', 0) && event.phone.length == 10) {
      return true;
    }
    if (event.phone.contains('+84', 0) && event.phone.length == 12) {
      return true;
    }
    return false;
  }
}
