import 'package:flutter/material.dart';

class ButtonBoarding extends StatelessWidget {
  const ButtonBoarding({super.key, this.button, this.textbutton});
  final String? button, textbutton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding:
              const EdgeInsets.only(left: 120, right: 120, top: 20, bottom: 20),
          shape: const StadiumBorder(),
          side: const BorderSide(
            width: 2,
            color: Colors.black38,
            style: BorderStyle.solid,
          ),
        ),
        onPressed: () {},
        child: const Text('Siguiente'),
      ),
    );
  }
}
