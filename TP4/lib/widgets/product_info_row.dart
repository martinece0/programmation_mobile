import 'package:flutter/material.dart';
import 'package:formation_flutter/widgets/separator_line.dart';

class ProductInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final bool showSeparator;

  const ProductInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.showSeparator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001D3B),
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFAAAAAA),
                ),
              ),
            ],
          ),
        ),
        if (showSeparator)
          SeparatorLine(direction: Axis.horizontal),
      ],
    );
  }
}
