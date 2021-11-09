import 'package:flutter/material.dart';
import 'drawer.dart';

class DashboardView extends StatelessWidget {
  static const String routeName = '/dashboard';



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Dashboard'),
              centerTitle: true,
            ),
            drawer: createDrawer(context)
        ));
  }
}