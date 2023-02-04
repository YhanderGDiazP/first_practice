import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.image, this.tittle, this.text});
  final String? image, tittle, text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.asset(image!),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                tittle!,
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                text!,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
