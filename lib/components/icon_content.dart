import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget iconContent(double size) {
  return Hero(
    tag: Icon,
    child: Icon(
      FontAwesomeIcons.sun,
      size: size,
      color: Colors.white,
    ),
  );
}
