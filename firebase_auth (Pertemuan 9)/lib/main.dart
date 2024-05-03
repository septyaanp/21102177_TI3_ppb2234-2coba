import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pertemuan9/firebase_options.dart';

import 'ui/splash.dart';
import 'utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praktikum 9",
      debugShowCheckedModeBanner: false,
      navigatorKey: NAV_KEY,
      onGenerateRoute: generateRoute,
      home: SplashScreen(),
    );
  }
}
