import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image(
        width: 75,
        height: 75,
        fit: BoxFit.cover,
        image: AssetImage("pfp.jpg"),
      ),
    );
  }
}