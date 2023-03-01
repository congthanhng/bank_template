import 'package:bank_template/domain/models/finance.dart';
import 'package:bank_template/presentations/utils/color_ext.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FinanceCarousel extends StatelessWidget {
  FinanceCarousel({super.key});

  final List<FinanceModel> mockFinance = FinanceModel.mockData();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Finance'.toUpperCase(),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontSize: AppFontSize.fontSize10,
              ),
        ),
        const SizedBox(
          height: AppPadding.pad12,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 3.7,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: AppPadding.pad13,
            ),
            itemCount: mockFinance.length,
            itemBuilder: (context, index) => SmallCard(
              name: mockFinance[index].name??'',
              bgColor: (mockFinance[index].bgColor??'').fromHex(),
              imageIcon: Image.asset('packages/bank_ui_kit/${mockFinance[index].pathIcon}'),
            ),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    ).px(AppPadding.pad16);
  }
}
