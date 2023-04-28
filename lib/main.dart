import 'package:catspragma/views/pages/Home.page.dart';
import 'package:flutter/material.dart';

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
      title: 'Cats Pragma',
      theme: ThemeData(
       appBarTheme: const AppBarTheme(
         color: Colors.white,
         elevation: 0
       )
      ),
      home: const HomePage(),

    );
  }
}




