import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  const AppBadge(
      {Key? key,
      required this.iconImage,
      this.background = AppColors.accentYellow,
      this.size = AppSize.size32, this.radius = AppRadius.rad10})
      : super(key: key);

  final Widget iconImage;
  final Color background;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.pad4),
        child: iconImage,
      ),
    );
  }
}
