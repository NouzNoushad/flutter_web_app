import 'package:flutter/material.dart';

class Revenue {
  final String text;
  final int percentage;

  const Revenue({required this.text, required this.percentage});
}

final RevenueList = [
  const Revenue(text: "new customers", percentage: 43),
  const Revenue(text: "existing customers", percentage: 50),
  const Revenue(text: "channel sales", percentage: 90),
  const Revenue(text: "profit", percentage: 75),
];
