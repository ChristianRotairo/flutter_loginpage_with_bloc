import 'package:equatable/equatable.dart';


// part of 'login_bloc.dart';

// @immutable
abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

// logic for loading is successful
class LoginSuccessful extends LoginState {
  final String message; // Optional: Add a message field if needed
  const LoginSuccessful({ required this.message});
}


// this should show error message
class LoginFailure extends LoginState {
  final String error;

   const LoginFailure({required this.error});

  @override
  List<Object> get props => [error];
}


