import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/auto_route.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  final AuthenticationCubit authenticationCubit;

  CheckIfAuthenticated({required this.authenticationCubit});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthenticated = authenticationCubit.state.isAuthenticated;
    final redirectTo = router.navigationHistory.urlState.url;
    if (isAuthenticated) {
      print('is authenticated: $isAuthenticated');
      resolver.next(true);
    } else {
      print('is NOT authenticated: $isAuthenticated, ${router.current.queryParams}');
      if (router.current.queryParams.isEmpty && redirectTo != 'login') {
        router.navigate(Login(redirectTo: redirectTo));
      }
    }
  }
}
