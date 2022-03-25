part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState(
      {required bool isAuthenticated,
      required DateTime updatedOn,
      String? redirectUrl}) = _AuthenticationState;
}
