import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/Routes/Routesname.dart';
import 'package:flutter_project/View/Create_Screen.dart';
import 'package:flutter_project/View/delete_view.dart';
import 'package:flutter_project/View/home_screen.dart';
import 'package:flutter_project/View/read_view.dart';
import 'package:flutter_project/View/update_View.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings db) {
    switch (db.name) {
      case Routesname.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          );
        }

      case Routesname.create:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => CreateScreen(),
          );
        }

      case Routesname.read:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => ReadView(),
          );
        }

      case Routesname.update:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => UpdateView(),
          );
        }

      case Routesname.delete:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => DeleteView(),
          );
        }

      default:
        {
          return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: Center(child: Text('No route found'))),
          );
        }
    }
  }
}
