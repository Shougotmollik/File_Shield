import 'package:file_shield/Bindings/all_bindings.dart';
import 'package:file_shield/Screens/SplashScreen/splash_screen.dart';
import 'package:file_shield/Utils/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  AllBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}
