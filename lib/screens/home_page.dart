import 'package:flutter/material.dart';

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
                      Column(
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
                      ),
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
