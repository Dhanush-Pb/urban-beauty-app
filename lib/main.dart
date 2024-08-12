import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:urbar_culture/view/bottm_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Lock orientation to portrait
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban culture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Bootmnavepage(),
    );
  }
}
