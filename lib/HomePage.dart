import 'package:flutter/material.dart';
import 'package:me_app/routes/routes.dart';
import 'package:me_app/dashboardview.dart';
import 'package:me_app/projectsview.dart';
import 'package:me_app/reportsview.dart';
import 'package:me_app/messagesview.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Demo',
      home: DashboardView(),
      routes: {
        routes.dashboard: (context) => DashboardView(),
        routes.projects: (context) => ProjectsView(),
        routes.messages: (context) => MessagesView(),
        routes.reports: (context) => ReportsView(),
      },
    );
  }
}