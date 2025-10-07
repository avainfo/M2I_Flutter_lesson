import 'package:flutter/cupertino.dart';
import 'package:lesson_m2i_lyon_flutter/screens/home_page.dart';
import 'package:lesson_m2i_lyon_flutter/screens/second_page.dart';
import 'package:lesson_m2i_lyon_flutter/screens/third_page.dart';

class NavigationHelper {
  static final List<Widget> NAVIGATIONS_WIDGETS = [
    HomePage(),
    SecondPage(),
    ThirdPage(),
  ];
}
