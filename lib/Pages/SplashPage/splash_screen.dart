import 'dart:async';

import 'package:file_shield/Pages/WelcomePage/welcome_screen.dart';
import 'package:file_shield/Utils/config.dart';
import 'package:file_shield/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashScreenImage),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              AppConfig.appName,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
