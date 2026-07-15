import 'package:flutter/material.dart';

extension NumExtensions on num {
  SizedBox get vGap => SizedBox(height: toDouble());

  SizedBox get hGap => SizedBox(width: toDouble());

  SizedBox get sGap => SizedBox(height: toDouble(), width: toDouble());
}
