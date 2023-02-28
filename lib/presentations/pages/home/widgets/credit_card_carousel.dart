import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CreditCardCarousel extends StatelessWidget {
  CreditCardCarousel({super.key});

  final List<String> list = ['a', 'b', 'c'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.size170,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: AppPadding.pad13,
        ),
        itemBuilder: (context, index) => const CreditCardMedium(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: list.length,
      ),
    ).px(AppPadding.pad16);
  }
}
