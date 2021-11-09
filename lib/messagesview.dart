import 'package:flutter/material.dart';
import 'drawer.dart';

class MessagesView extends StatelessWidget {
  static const String routeName = '/messages';



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Messages'),
              centerTitle: true,
            ),
            drawer: createDrawer(context)
        ));
  }
}