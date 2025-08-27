import 'package:flutter/material.dart';
import 'package:playrev/pages/indexLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:  ColorScheme(
          brightness: Brightness.light,
          primary: Colors.grey.shade900, // Primary color
          onPrimary: Colors.white,     // Text/icon color on primary
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,      ),
      home: const IndexLayout(title: 'PLAYREV'),
    );
  }
}
