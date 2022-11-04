import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/AuthConroller.dart';

export 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class UserLogin extends LoginEvent {
  String UserName;
  String Password;
  UserLogin({
    required this.UserName,
    required this.Password,
  });

  @override
  List<Object> get props => [UserName, Password];
}

class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginChecking extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  String error;
  LoginError({required this.error});
  @override
  List<Object> get props => [error];
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is UserLogin) {
        emit(LoginChecking());
        try {
          dynamic status = await AuthConroller()
              .AccountLogin(event.UserName, event.Password);
          if (status == true) {
            emit(LoginSuccess());
          } else {
            emit(LoginError(error: status));
          }
        } on SocketException {
          emit(LoginError(error: "No Internet Connection"));
        } on HttpException {
          emit(LoginError(error: "No Service Found"));
        } on FormatException {
          emit(LoginError(error: "Invalid Response Format"));
        } catch (e) {
          emit(LoginError(error: e.toString()));
        }
      }
    });
  }
}
