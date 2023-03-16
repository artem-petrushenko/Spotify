import 'package:flutter/material.dart';

class LoadingContainerWidget extends StatelessWidget {
  final double? width, height, radius;

  const LoadingContainerWidget({
    Key? key,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 16.0)),
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
    );
  }
}
