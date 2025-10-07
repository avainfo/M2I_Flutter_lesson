import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        "https://static.vecteezy.com/system/resources/thumbnails/053/741/746/small/a-colorful-lizard-with-a-blue-and-orange-face-is-staring-at-the-camera-the-lizard-s-face-is-the-main-focus-of-the-image-and-it-is-curious-or-alert-the-bright-colors-of-the-lizard-s-face-photo.jpg",
        width: 75,
        height: 75,
        fit: BoxFit.cover,
      ),
    );
  }
}
