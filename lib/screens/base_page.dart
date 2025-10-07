import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final List<Widget> children;
  const BasePage({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
