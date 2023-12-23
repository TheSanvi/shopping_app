import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/auth/screens/auth_screen.dart';
import 'package:shopping_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E COMMERCE APP',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor ,
        colorScheme: ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
      home: AuthScreen(),
    );
  }
}

