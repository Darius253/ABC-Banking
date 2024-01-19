import 'package:abc_banking/firebase_options.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABC Banking App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        fontFamily: 'Manrope',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
