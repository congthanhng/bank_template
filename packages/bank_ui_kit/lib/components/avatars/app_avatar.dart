import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({Key? key, required this.children}) : super(key: key);

  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              AppColors.gradientAvatarStart,
              AppColors.gradientAvatarEnd,
            ],
            tileMode: TileMode.mirror,
          ),
          borderRadius: BorderRadius.circular(AppRadius.rad16)),
      child: children,
    );
  }
}
