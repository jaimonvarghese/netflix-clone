import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/presentation/main_page/main_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        primaryColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: MainPageScreen(),
    );
  }
}
