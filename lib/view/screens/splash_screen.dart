import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/view/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/splash_pic.jpg",
            fit: BoxFit.cover,
            height: height * 0.4,
            width: width * 1,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            "TOP HEADLINES ",
            style: GoogleFonts.anton(
                letterSpacing: 1, color: Colors.grey.shade700),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          SpinKitCircle(
            color: Colors.grey.shade700,
            size: 40,
          )
        ],
      ),
    );
  }
}
