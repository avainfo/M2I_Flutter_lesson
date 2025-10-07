import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/welcome_text.dart';

import '../profile_icon.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 75,
      child: Row(
        spacing: 16,
        children: [
          ProfileIcon(),
          WelcomeText(),
        ],
      ),
    );
  }
}
