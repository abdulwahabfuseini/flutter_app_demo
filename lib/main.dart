import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/pages/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GCB UI Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3A4F5C)),
        useMaterial3: true,
        // Apply the font to the entire app
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4F6F8), // Light grey background
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}