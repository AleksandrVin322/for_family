part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

/// [Event] для переключения на колонку входа.
class AuthLoginEvent extends AuthEvent {}

/// [Event] для переключения на колонку регистрации.
class AuthRegisterEvent extends AuthEvent {}
