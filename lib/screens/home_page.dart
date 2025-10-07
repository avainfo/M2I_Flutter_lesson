import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/commons/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: Column(
              children: [
                TopBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
