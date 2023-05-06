import 'package:flutter/material.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;

  const ListTileWidget({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      visualDensity: VisualDensity.comfortable,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle ?? '') : null,
      leading: leading,
    );
  }
}
