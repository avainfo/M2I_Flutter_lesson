import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final IconData icon;

  const NavigationCard({
    super.key,
    this.icon = Icons.question_mark_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {},
      splashColor: Colors.greenAccent,
      child: Container(
        height: MediaQuery.of(context).size.width / 2,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Icon(icon),
      ),
    );
  }
}
