import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Bonjour",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withAlpha(180),
            fontWeight: FontWeight.w100,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Antonin Do Souto",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
