import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardLoan extends StatelessWidget {
  const CardLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: AppColors.grayBase2,
          borderRadius: BorderRadius.circular(AppRadius.rad26),),
      child: Row(
        children: [
          AppBadge(iconImage: Assets.icons.creditcardFace.imageWidget()),
          const SizedBox(width: AppPadding.pad12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account № 3874825',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: AppFontSize.fontSize15, color: Colors.white,),
              ),
              Text(
                'Expires 12/22/2023',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: AppFontSize.fontSize12, color: Colors.grey,),
              ),
            ],
          ).expand(),
          Column(
            children: [
              Text(
                r'$ 78,92',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: AppFontSize.fontSize15, color: Colors.white,),
              ),
              Text(
                'Rate 3.5%',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: AppFontSize.fontSize12, color: Colors.grey,),
              ),
            ],
          ),
        ],
      ).p(AppPadding.pad20),
    );
  }
}
