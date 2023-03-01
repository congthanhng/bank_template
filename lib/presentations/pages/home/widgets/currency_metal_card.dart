import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrencyMetalCard extends StatelessWidget {
  const CurrencyMetalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.grayBase2,
        borderRadius: BorderRadius.circular(AppRadius.rad26),
      ),
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(),
          1: IntrinsicColumnWidth(),
          2: IntrinsicColumnWidth(),
        },
        children: [
          TableRow(
            children: [
              Text(
                'Currencie',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey, fontSize: AppFontSize.fontSize12),
              ).pOnly(bottom: AppPadding.pad12),
              Text(
                'Buy',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey, fontSize: AppFontSize.fontSize12),
              ).pOnly(right: AppPadding.pad32).objectBottomRight(),
              Text(
                'Sell',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey, fontSize: AppFontSize.fontSize12),
              ).objectBottomRight(),
            ],
          ),
          TableRow(
            children: [
              Row(
                children: [
                  AppBadge(
                    iconImage: Assets.icons.dollar.imageWidget(),
                    background: AppColors.accentMint,
                    size: AppSize.size20,
                    radius: AppRadius.rad8,
                  ),
                  const SizedBox(
                    width: AppPadding.pad12,
                  ),
                  Text(
                    'USD',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white, fontSize: AppFontSize.fontSize15),
                  )
                ],
              ),
              Text(
                r'$ 78,92',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white, fontSize: AppFontSize.fontSize15),
              ).pOnly(right: AppPadding.pad32),
              Text(
                r'$ 78,92',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white, fontSize: AppFontSize.fontSize15),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.pad8),
                child: Row(
                  children: [
                    AppBadge(
                      iconImage: Assets.icons.euro.imageWidget(),
                      background: AppColors.accentMint,
                      size: AppSize.size20,
                      radius: AppRadius.rad8,
                    ),
                    const SizedBox(
                      width: AppPadding.pad12,
                    ),
                    Text(
                      'EUR',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: AppFontSize.fontSize15),
                    )
                  ],
                ),
              ),
              Text(
                r'$ 78,92',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white, fontSize: AppFontSize.fontSize15),
              ),
              Text(
                r'$ 78,92',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white, fontSize: AppFontSize.fontSize15),
              ),
            ],
          ),
        ],
      ).p(AppPadding.pad20),
    );
  }
}
