import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newtodo/layout/home_layout.dart';
import 'package:newtodo/provider/myprovider.dart';
import 'package:newtodo/screens/log_in.dart';
import 'package:newtodo/shared/styels/theming.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.disableNetwork();
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.local),
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        Login.routeName: (context) => Login(),
      },
      theme: MyThemeData.lightData,
      darkTheme: ThemeData.dark(),
      themeMode: provider.theme,
    );
  }
}
