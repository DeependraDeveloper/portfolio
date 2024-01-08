import 'package:flutter/material.dart';

Widget verticalSpace(double height) => SizedBox(height: height);

Widget horizontalSpace(double width) => SizedBox(width: width);

paddingSymmetricSpace(double horizontal, double vertical) =>
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
