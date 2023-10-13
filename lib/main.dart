import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newtodo/layout/home_layout.dart';

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
        )
      ),
    );
  }
}
