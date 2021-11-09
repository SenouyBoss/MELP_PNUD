import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:me_app/routes/routes.dart';
import 'package:me_app/drawerHeader.dart';


Widget createDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:  AssetImage('asset/images/pnud_splash.jpg'))),
                child: Stack(children: <Widget>[
                  Positioned(
                      bottom: 0.0,
                      left: 16.0,
                      child: Text("MELP MENU",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500))),
                ])),

          ),
          ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.dashboard);
              }),
          ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.projects);
              }),
          ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.messages);
              }),
          ListTile(
              leading: Icon(Icons.pie_chart),
              title: Text('Reports'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.reports);
              }),

        ],
      ));


}