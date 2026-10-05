import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FluterBodyHealthCalculatorProject(),
  );
}

class FluterBodyHealthCalculatorProject extends StatefulWidget {
  const FluterBodyHealthCalculatorProject({super.key});

  @override
  State<FluterBodyHealthCalculatorProject> createState() => _FluterBodyHealthCalculatorProjectState();
}

class _FluterBodyHealthCalculatorProjectState extends State<FluterBodyHealthCalculatorProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}