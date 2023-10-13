import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newtodo/layout/home_layout.dart';
import 'package:newtodo/provider/myprovider.dart';
import 'package:newtodo/shared/styels/colores.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.local),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName:(context) => HomeLayout(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.white,shape: CircularNotchedRectangle(),
        ),
        scaffoldBackgroundColor: mintGreen
      ),
    );
  }
}
