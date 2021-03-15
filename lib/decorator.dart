import 'package:flutter/material.dart';

getBox({
  Widget child,
  double width,
  double height,
  double borderRadius,
  Color primaryColor,
  Color secondaryColor,
}) {
  return Container(
    child: child,
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: primaryColor,
            offset: Offset(-3, -3),
            blurRadius: 5,
            spreadRadius: 5,
          ),
          BoxShadow(
            color: secondaryColor,
            offset: Offset(3, 3),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ]),
  );
}
