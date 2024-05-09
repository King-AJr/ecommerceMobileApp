import 'package:flutter/material.dart';

class BuildSizeButton extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Color color;
  final bool circular;
  const BuildSizeButton({
    super.key,
    required this.label,
    required this.height,
    required this.width,
    required this.color, required this.circular,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: circular ? BorderRadius.circular(70) :BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFF9B9B9B),
          width: 0.5,
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
