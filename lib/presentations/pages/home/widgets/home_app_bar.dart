import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Assets.images.userAvatar
              .svgWidget(
                  fit: BoxFit.fill, width: AppSize.size32, height: AppSize.size32)
              .pOnly(left: AppPadding.pad16),
          Assets.images.logo.imageWidget(height: AppSize.size21).centered(),
        ],
      ),
    );
  }
}
