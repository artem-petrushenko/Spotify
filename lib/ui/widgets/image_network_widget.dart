import 'package:flutter/material.dart';

class ImageNetworkWidget extends StatelessWidget {
  final double? width, height, radius, aspectRation;
  final String imageUrl;

  const ImageNetworkWidget({
    Key? key,
    this.width,
    this.height,
    this.radius,
    this.aspectRation,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(radius ?? 0.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: height,
        width: width,
        child: Image.network(
          imageUrl,
          errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) =>
              Container(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  child: const Icon(Icons.error)),
          frameBuilder: (BuildContext context, Widget child, int? frame,
              bool wasSynchronouslyLoaded) {
            return wasSynchronouslyLoaded
                ? child
                : AnimatedOpacity(
                    opacity: frame == null ? 0 : 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    child: child,
                  );
          },
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
