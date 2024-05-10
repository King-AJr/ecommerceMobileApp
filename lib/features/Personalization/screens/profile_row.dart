import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileRow extends StatelessWidget {
  final String field;
  final String value;
  final IconData icon;
  final void Function()? onPressed;

  const ProfileRow({
    super.key,
    required this.field,
    required this.value,
    this.onPressed,
    this.icon = Iconsax.arrow_right_34,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16 / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                field,
                style: Theme.of(context).textTheme.displaySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.displaySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Icon(icon, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
