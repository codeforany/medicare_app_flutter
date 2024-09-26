import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/screen/login/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 10));
    loadNextScreen();
  }

  void loadNextScreen() {
    context.push(const OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/img/splash_logo.png",
          width: context.width * 0.35,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
