import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class CreditCardMedium extends StatelessWidget {
  const CreditCardMedium(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.name,
      required this.amount,
      required this.numberCard})
      : super(key: key);

  final Color startColor;
  final Color endColor;
  final String name;
  final String amount;
  final String numberCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                startColor,
                endColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.25, 1]),
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
              name,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.text, fontSize: AppFontSize.fontSize11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16, top: AppPadding.pad2),
            child: Text(
              amount,
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
              numberCard,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.text, fontSize: AppFontSize.fontSize12),
            ),
          ),
        ],
      ),
    );
  }
}
