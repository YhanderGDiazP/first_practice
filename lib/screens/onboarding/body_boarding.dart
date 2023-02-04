import 'package:first_practice/screens/onboarding/components/onboarding.dart';
import 'package:flutter/material.dart';

class BodyBoarding extends StatefulWidget {
  const BodyBoarding({super.key});

  @override
  State<BodyBoarding> createState() => _BodyBoardingState();
}

class _BodyBoardingState extends State<BodyBoarding> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const OnBoarding(),
    );
  }
}