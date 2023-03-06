import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedHeight;
  final double dashedWidth;
  final int count;
  final Color color;

  const DashedLine(
      {this.axis = Axis.vertical,
      Key? key,
      this.dashedHeight = 1,
      this.dashedWidth = 1,
      this.count = 10,
      this.color = Colors.black12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index) => Container(width: dashedWidth, height: dashedHeight, color: color)),
    );
  }
}
