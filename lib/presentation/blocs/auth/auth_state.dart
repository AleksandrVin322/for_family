part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

/// [State] для колонки входа.
class AuthLoginState extends AuthState {}

/// [State] для колонки регистрации.
class AuthRegisterState extends AuthState {}
