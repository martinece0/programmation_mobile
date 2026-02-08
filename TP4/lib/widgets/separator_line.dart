import 'package:flutter/material.dart';

/// Widget séparateur réutilisable (horizontal ou vertical)
class SeparatorLine extends StatelessWidget {
  final Axis direction;
  final double thickness;
  final Color color;
  final double? indent;
  final double? endIndent;

  const SeparatorLine({
    super.key,
    this.direction = Axis.vertical,
    this.thickness = 1.0,
    this.color = const Color(0xFFDDDDDD),
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.vertical) {
      return Container(
        width: thickness,
        color: color,
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: indent ?? 0.0),
        child: Container(
          width: double.infinity,
          height: thickness,
          color: color,
        ),
      );
    }
  }
}
