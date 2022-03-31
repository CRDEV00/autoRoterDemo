import 'package:auto_route/auto_route.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatelessWidget {
  final String? redirectTo;

  const MainWrapper({Key? key, @QueryParam('redirectTo') this.redirectTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const AutoRouter();
    return AutoTabsScaffold(
      routes: const [Home(), Profile()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}

 /* context.navigateTo(
        const Health(),
        onFailure: (failure) {
          print(failure);
        },
      ).then((value) {
        Future.delayed(const Duration(milliseconds: 10), () {
          AutoRouter.of(context)
              .push(HealthItemDetailRoute(id: 1008, type: FeatureModuleConfigType.SuperBill.index));
        });
      }); */
