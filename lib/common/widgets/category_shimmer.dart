import 'package:ecommerce_app/common/widgets/shimmer_effect.dart';
import 'package:flutter/material.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          scrollDirection: Axis.vertical,
          itemBuilder: (_, __) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerEffect(width: 55, height: 55, radius: 55),
                SizedBox(height: 8),
                ShimmerEffect(width: 55, height: 8)
              ],
            );
          },
          itemCount: itemCount),
    );
  }
}
