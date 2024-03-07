
import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginStarted>((event, emit) async {
      emit(LoginLoading());

      // Simulate asynchronous login here
      await Future.delayed(const Duration(seconds: 3));

      // Assuming login is successful for demonstration
      emit(LoginSuccessful(message: 'Welcome'));
    });

    on<LoginFailed>((event, emit) {
      emit(LoginFailure(error: event.message));
    });
  }
}