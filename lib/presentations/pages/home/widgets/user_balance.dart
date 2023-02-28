import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UserBalance extends StatelessWidget {
  const UserBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your balance',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white, fontSize: 15),
        ),
        Row(
          children: [
            Text(
              r'$ 7,896',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,),
            ),
            const Spacer(),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.grayBase1,
                borderRadius: BorderRadius.circular(AppPadding.pad32),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
                size: AppSize.size21,
              ).p(AppPadding.pad10),
            )
          ],
        )
      ],
    ).px(AppPadding.pad16);
  }
}
