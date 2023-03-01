import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardAdvertisement extends StatelessWidget {
  const CardAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.gradient1Start, AppColors.accentMint],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(AppRadius.rad26),
          ),
          child: Row(
            children: [
              AppBadge(
                iconImage: Assets.icons.thunder.imageWidget(),
                background: AppColors.badgeAdvertiseBg,
              ),
              const SizedBox(
                width: AppPadding.pad12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start investing now!',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: AppFontSize.fontSize15,
                        color: AppColors.textAdvertise,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Protected savings and investment plans',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: AppFontSize.fontSize12,
                          color: AppColors.textAdvertise,
                        ),
                  ),
                ],
              ).expand(),
            ],
          ).p(AppPadding.pad20),
        ),
        Assets.icons.close
            .imageWidget(width: AppSize.size16, height: AppSize.size16)
            .pOnly(top: AppPadding.pad16, right: AppPadding.pad16)
            .objectTopRight()
      ],
    );
  }
}
