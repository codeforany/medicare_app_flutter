import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/screen/home/main_tab_screen.dart';
import 'package:medicare/screen/login/mobile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.maxFinite,
                height: context.width * 0.6,
                decoration: BoxDecoration(
                  color: TColor.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.width),
                    bottomRight: Radius.circular(context.width),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  "assets/img/splash_logo.png",
                  width: context.width * 0.33,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            "Welcome",
            style: TextStyle(
              color: TColor.primary,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Sign in to continue",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                context.push( const MobileScreen() );
              },
              child: Container(
                width: double.maxFinite,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: TColor.placeholder, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/phone_ic.png",
                      width: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Or",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                context.push( const MainTabScreen() );
              },
              child: Container(
                width: double.maxFinite,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: TColor.placeholder, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/google_ic.png",
                      width: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "By signing in , You accepting our",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  " Terms and Conditions",
                  style: TextStyle(
                      color: TColor.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: context.width * 0.4,
          ),
        ],
      ),
    );
  }
}
