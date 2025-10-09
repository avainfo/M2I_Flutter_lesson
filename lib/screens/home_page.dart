import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/screens/base_page.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/navigation_buttons_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 75 - 32,
          child: NavigationButtonsList(),
        ),
      ],
    );
  }
}
