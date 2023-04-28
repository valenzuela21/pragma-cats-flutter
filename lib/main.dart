import 'package:catspragma/blocs/cats/cats_bloc.dart';
import 'package:catspragma/repositories/cats_respository.dart';
import 'package:catspragma/services/cats_pragma_api.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catspragma/views/pages/page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return RepositoryProvider(
      create: (context) => CatsRepository(
          catsPragmaApiServices:
              CatsPragmaApiServices(httpClient: http.Client())),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  CatsBloc(catsRepository: context.read<CatsRepository>())..add(AllCatsEvent()),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cats Pragma',
          theme: ThemeData(
              colorScheme: ColorScheme.light().copyWith(
                // to use the primaryColor
                primary: Colors.purple.shade500,
              ),
              textTheme: GoogleFonts.aBeeZeeTextTheme(),
              appBarTheme:
                  const AppBarTheme(color: Colors.white, elevation: 0)),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/details': (context) => DetailPage()
          },
        ),
      ),
    );
  }
}
