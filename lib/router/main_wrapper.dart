import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  final String? redirectTo;

  const MainWrapper({Key? key, @QueryParam('redirectTo') this.redirectTo}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    if (widget.redirectTo != null) {
      AutoRouter.of(context).pushNamed(widget.redirectTo!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
