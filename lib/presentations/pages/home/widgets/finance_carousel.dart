import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FinanceCarousel extends StatelessWidget {
  FinanceCarousel({super.key});

  final List<String> mockFinance = ['a', 'b', 'c', 'd'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Finance'.toUpperCase(),
          style: Theme
              .of(context)
              .textTheme
              .bodySmall
              ?.copyWith(
            color: Colors.white,
            fontSize: AppFontSize.fontSize10,
          ),
        ),
        const SizedBox(height: AppPadding.pad12,),
        SizedBox(
          height: MediaQuery.of(context).size.width / 3.7,
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppPadding.pad13,),
            itemCount: mockFinance.length,
            itemBuilder: (context, index) => const SmallCard() ,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    ).px(AppPadding.pad16);
  }
}
