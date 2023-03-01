import 'package:bank_internationalization/l10n/l10n.dart';
import 'package:bank_template/presentations/pages/home/widgets/card_advertisement.dart';
import 'package:bank_template/presentations/pages/home/widgets/card_loan.dart';
import 'package:bank_template/presentations/pages/home/widgets/currency_metal_card.dart';
import 'package:bank_ui_kit/components/expansions/app_expansion.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class ActionSheet extends StatelessWidget {
  const ActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.rad16),
        // color: AppColors.homeBGGradient
        gradient: const LinearGradient(
          colors: [
            AppColors.homeBGGradient,
            AppColors.primaryBg,
            AppColors.homeBGGradient
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppExpansion(
            title: context.l10n.current_loans,
            isTrailing: true,
            children: const [
              CardLoan(),
              SizedBox(
                height: AppPadding.pad16,
              ),
              CardAdvertisement(),
            ],
          ),
          AppExpansion(
            title: context.l10n.currencies_and_metals,
            children: const [
              CurrencyMetalCard(),
              SizedBox(
                height: AppPadding.pad12,
              ),
              CurrencyMetalCard(isMetal: true),
            ],
          ),
          const SizedBox(
            height: AppPadding.pad12,
          ),
        ],
      ),
    );
  }
}
