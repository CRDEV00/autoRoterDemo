import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit()
      : super(AuthenticationState(isAuthenticated: false, updatedOn: DateTime.now()));

  void login({String? url}) {
    emit(AuthenticationState(isAuthenticated: true, updatedOn: DateTime.now(), redirectUrl: url));
  }

  void logout() {
    emit(AuthenticationState(isAuthenticated: false, updatedOn: DateTime.now()));
  }

  void addRedirectUrl(String url) {
    emit(AuthenticationState(isAuthenticated: false, updatedOn: DateTime.now(), redirectUrl: url));
  }
}
