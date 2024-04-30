import 'package:flutter/material.dart';

class buildSizeButton extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Color color;
  const buildSizeButton({
    super.key,
    required this.label,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: darkMode ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(15),
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