import "package:flutter/material.dart";

class FindingResult extends StatelessWidget {
  const FindingResult({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 62,
              color: Color(0xFFDB3022),
            ),
            Text("Finding similar results...",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Adamina')),
          ],
        ),
      ),
    );
  }
}
