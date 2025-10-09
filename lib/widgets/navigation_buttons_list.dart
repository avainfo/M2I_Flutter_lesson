import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/utils/icons_helper.dart';
import 'package:lesson_m2i_lyon_flutter/utils/navigation_helper.dart';
import 'package:lesson_m2i_lyon_flutter/widgets/navigation_card.dart';

class NavigationButtonsList extends StatelessWidget {
  const NavigationButtonsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NavigationCard(
          icon: IconsHelper.NAVIGATION_ICONS[index],
          event: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NavigationHelper.NAVIGATIONS_WIDGETS[index],
              ),
            );
          },
        );
      },
      itemCount: 3,
    );
  }
}
