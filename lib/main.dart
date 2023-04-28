import 'package:catspragma/views/pages/Detail.page.dart';
import 'package:catspragma/views/pages/Home.page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          colorScheme: ColorScheme.light().copyWith( // to use the primaryColor
            primary: Colors.purple.shade500,
          ),
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
          appBarTheme: const AppBarTheme(
         color: Colors.white,
         elevation: 0
       )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => DetailPage()
      },

    );
  }
}




