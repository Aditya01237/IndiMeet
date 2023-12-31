import 'package:flutter/material.dart';
import 'package:indimeet/utils/colors.dart';
import 'package:indimeet/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IndiMeet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        routes: {'./login': (context) => const LoginScreen()},
        home: const LoginScreen());
  }
}
