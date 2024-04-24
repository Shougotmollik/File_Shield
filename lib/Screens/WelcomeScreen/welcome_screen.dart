import 'package:file_shield/Screens/CalculatorScreen/calculator_screen.dart';
import 'package:file_shield/Utils/config.dart';
import 'package:file_shield/Utils/images.dart';
import 'package:file_shield/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.welcomeScreenImage),
              Text(
                "Welcome to ${AppConfig.appName}",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Text(
                "Hide all your privacy behind a secret calculator",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 16),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.38,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Text(
                        "Privacy And Permissions Notice",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Column(
                        children: [
                          Text(
                            AppConfig.privacyText,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: RichText(
                  text: TextSpan(
                      text:
                          "By continuing to use ${AppConfig.appName}, you agree to our",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                      children: [
                        TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const TextSpan(text: " and"),
                        TextSpan(
                          text: " Terms of Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ]),
                ),
              ),
              const SizedBox(height: 18),
              CustomButton(
                btnText: "Agree & Continue",
                onTap: () {
                  Get.offAll(const CalculatorScreen());
                },
              ),
              const SizedBox(height: 8.0),
              CustomButton(
                btnText: "Disagree",
                backgroundColor: Colors.transparent,
                textColor:
                    Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
                onTap: () {
                  Get.defaultDialog(
                    title:
                        "If disagree, your will not able to use ${AppConfig.appName},",
                    backgroundColor: Theme.of(context).colorScheme.background,
                    titleStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    content: RichText(
                      text: TextSpan(
                          text:
                              "By continuing to use ${AppConfig.appName}, you agree to our",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary),
                          children: [
                            TextSpan(
                              text: " Privacy Policy",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            const TextSpan(text: " and"),
                            TextSpan(
                              text: " Terms of Service",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ]),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: Text(
                            "Quit",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary
                                    .withOpacity(0.5)),
                          )),
                      TextButton(
                        onPressed: () {
                          Get.offAll(() => const CalculatorScreen());
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
