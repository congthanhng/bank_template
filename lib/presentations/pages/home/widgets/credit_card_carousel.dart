import 'package:bank_template/domain/models/credit.dart';
import 'package:bank_template/presentations/pages/home/bloc/credit/credit_bloc.dart';
import 'package:bank_template/presentations/utils/color_ext.dart';
import 'package:bank_template/presentations/utils/currency_format.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class CreditCardCarousel extends StatefulWidget {
  const CreditCardCarousel({super.key});

  @override
  State<CreditCardCarousel> createState() => _CreditCardCarouselState();
}

class _CreditCardCarouselState extends State<CreditCardCarousel> {
  final List<String> list = ['a', 'b', 'c'];

  final CreditBloc _bloc = CreditBloc()..add(CreditFetched());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Builder(
        builder: (context) {
          return BlocBuilder<CreditBloc, CreditState>(
            builder: (context, state) {
              var data = <Credit>[];
              if (state is CreditFetchSuccess) {
                data = state.data;
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: AppPadding.pad13,
                  ),
                  itemBuilder: (context, index) => CreditCardMedium(
                    name: data[index].name ?? '',
                    amount: (data[index].amount ?? 0.0).toMoney(),
                    numberCard: data[index].cardNumber ?? '',
                    startColor: (data[index].colorStart ?? '').fromHex(),
                    endColor: (data[index].colorEnd ?? '').fromHex(),
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: data.length,
                ),
              );
            },
          );
        },
      ),
    ).px(AppPadding.pad16);
  }
}
