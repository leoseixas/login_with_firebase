part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpRequired extends SignUpEvent {
  const SignUpRequired({required this.myUser, required this.password});

  final MyUser myUser;
  final String password;
}
