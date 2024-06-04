import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/shimmer_effect.dart';
import 'package:flutter/material.dart';

class TVerticalProductShimmer extends StatelessWidget {
  const TVerticalProductShimmer({
    super.key,
    this.itemCount = 4,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => const SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ShimmerEffect(width: 180, height: 180),
            SizedBox(height: 8),

            // Text
            ShimmerEffect(width: 160, height: 15),
            SizedBox(height: 8),
            ShimmerEffect(width: 110, height: 15),
          ],
        ),
      ),
    );
  }
}
