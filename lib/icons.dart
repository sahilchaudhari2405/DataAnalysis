import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menu_icons extends StatelessWidget {
  menu_icons({required this.icondata});
  final IconData icondata;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      width: 49,
      height: 49,
      child: Icon(icondata),
    );
  }
}
