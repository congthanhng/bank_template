import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class CreditCardMedium extends StatelessWidget {
  const CreditCardMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                AppColors.gradient2Start,
                AppColors.gradient2End,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.25, 1]),
          borderRadius: BorderRadius.circular(AppRadius.rad30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16, top: AppPadding.pad24),
            child: Assets.images.visaLogo.imageWidget(height: AppSize.size20),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16, top: AppPadding.pad32),
            child: Text(
              'Salary',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.text, fontSize: AppFontSize.fontSize11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16, top: AppPadding.pad2),
            child: Text(
              r'$ 7,896',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.text,
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.fontSize17),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16,
                top: AppPadding.pad26,
                bottom: AppPadding.pad24),
            child: Text(
              r'** 6971',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.text, fontSize: AppFontSize.fontSize12),
            ),
          ),
        ],
      ),
    );
  }
}
