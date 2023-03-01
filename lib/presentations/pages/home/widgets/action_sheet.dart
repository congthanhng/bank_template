import 'package:bank_template/presentations/pages/home/widgets/card_loan.dart';
import 'package:bank_ui_kit/components/expansions/app_expansion.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class ActionSheet extends StatelessWidget {
  const ActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:  BoxDecoration(
          borderRadius:
              BorderRadius.circular(AppRadius.rad16),
          // color: AppColors.homeBGGradient
          gradient: const LinearGradient(
            colors: [
              AppColors.homeBGGradient,
              AppColors.primaryBg,
              AppColors.primaryBg,
              AppColors.homeBGGradient
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          AppExpansion(
            title: 'Current loans',
            isTrailing: true,
            children: [
              CardLoan(),
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
            ],
          ),
          AppExpansion(
            title: 'Currencies and metals',
            children: [
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
              Text('afaffa'),
            ],
          )
        ],
      ),
    );
  }
}
