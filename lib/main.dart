import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone App',
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
      // onGenerateRoute: ,
      home: Scaffold(
        appBar: AppBar(backgroundColor: GlobalVariables.secondaryColor,
          title: Text("E-COMMERCE"),
        ),
          body: Column(
            children: [
              Center(child: Text("hello")
              ),
              ElevatedButton(onPressed: (){}, child: Text('click')),
            ],
          )
      ),
    );
  }
}

