import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  const AppBadge(
      {Key? key,
      required this.iconImage,
      this.background = AppColors.accentYellow})
      : super(key: key);

  final Widget iconImage;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.size32,
      height: AppSize.size32,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(AppRadius.rad10)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.pad4),
        child: iconImage,
      ),
    );
  }
}
