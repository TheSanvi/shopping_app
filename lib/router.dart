import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=> AuthScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=> Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );

  }
}