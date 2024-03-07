import 'package:equatable/equatable.dart';
// part of 'login_bloc.dart';


abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginStarted extends LoginEvent {
  final String username;
  final String password;

 const LoginStarted({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}

class LoginFailed extends LoginEvent {
  final String message;
  const LoginFailed({required this.message});
}


