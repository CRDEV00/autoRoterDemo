import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/auto_route.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  final AuthenticationCubit authenticationCubit;

  CheckIfAuthenticated({required this.authenticationCubit});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authenticated = authenticationCubit.state.isAuthenticated;
    if (authenticated) {
      resolver.next(true);
    } else {
      router.push(Login());
    }
  }
}
