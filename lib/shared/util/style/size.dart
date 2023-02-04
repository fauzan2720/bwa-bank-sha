import 'package:flutter/material.dart';

EdgeInsetsGeometry primarySize = EdgeInsets.fromLTRB(
  horizontalSize,
  topSize,
  horizontalSize,
  bottomSize,
);

EdgeInsetsGeometry primaryHorizontalSize = EdgeInsets.symmetric(
  horizontal: horizontalSize,
);

EdgeInsetsGeometry primaryVerticalSize = EdgeInsets.only(
  top: topSize,
  bottom: bottomSize,
);

double topSize = 40.0;
double bottomSize = 50.0;
double horizontalSize = 24.0;

double heightButton = 50.0;
double heightInput = 50.0;
