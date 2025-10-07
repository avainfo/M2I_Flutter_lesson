import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/welcome_text.dart';

import '../widgets/profile_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 16,
            bottom: 16,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 75,
                  child: Row(
                    spacing: 16,
                    children: [
                      ProfileIcon(),
                      WelcomeText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
