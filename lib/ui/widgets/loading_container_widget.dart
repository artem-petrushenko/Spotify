import 'package:flutter/material.dart';

class LoadingContainerWidget extends StatelessWidget {
  final double? width, height;

  const LoadingContainerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
    );
  }
}
