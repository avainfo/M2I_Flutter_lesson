import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/screens/base_page.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/commons/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        TopBar(),
      ],
    );
  }
}
