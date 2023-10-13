import 'package:car_maintenance/main.dart';
import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key, required this.content, required this.height});

  final Widget content;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20)),
      child: content,
    );
  }
}
