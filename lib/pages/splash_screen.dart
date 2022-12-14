import 'package:flutter/material.dart';
import 'package:foods/pages/OnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        ),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image(
          image: AssetImage(
            "assets/image/SlashScreen.png",
          ),
        ),
      ),
    );
  }
}
