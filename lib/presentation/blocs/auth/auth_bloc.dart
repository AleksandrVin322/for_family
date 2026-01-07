import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// [Bloc] для переключения между колонками входа и регистрации.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthLoginState()) {
    on<AuthLoginEvent>(_onLoginColumn);
    on<AuthRegisterEvent>(_onRegisterColumn);
  }

  void _onLoginColumn(AuthLoginEvent event, Emitter<AuthState> emit) {
    emit(AuthLoginState());
  }

  void _onRegisterColumn(AuthRegisterEvent event, Emitter<AuthState> emit) {
    emit(AuthRegisterState());
  }
}
