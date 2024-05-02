import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";

AppBar MyBottomAppBar(BuildContext context, String title,
    {List<Widget> actions = const []}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(Sizes.appBarHeight),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: AlignmentDirectional.bottomStart,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    ),
    actions: actions,
  );
}

AppBar MyAppBar(BuildContext context, String title,
    {List<Widget> actions = const []}) {
  return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: actions);
}
