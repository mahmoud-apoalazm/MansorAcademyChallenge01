import 'package:chalenge/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI challenge',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(

            padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
            elevation: MaterialStateProperty.resolveWith((states) => 20.0),
            shadowColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blue.withOpacity(0.4)),
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blue.shade700),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            textStyle: MaterialStateProperty.resolveWith(
                (states) => TextStyle(fontWeight: FontWeight.w800)),
          ),
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.deepPurple,
            ),
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.grey.shade800,
          ),
          subtitle2: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade400,
          ),
        ),
        primarySwatch:Colors.deepPurple ,

      ),
      home: SigninScreen(),
    );
  }
}
