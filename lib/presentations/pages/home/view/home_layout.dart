import 'package:bank_template/presentations/pages/home/widgets/credit_card_carousel.dart';
import 'package:bank_template/presentations/pages/home/widgets/finance_carousel.dart';
import 'package:bank_template/presentations/pages/home/widgets/home_app_bar.dart';
import 'package:bank_template/presentations/pages/home/widgets/user_balance.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.homeBGGradient,
              AppColors.primaryBg,
              AppColors.primaryBg,
              AppColors.homeBGGradient
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.005, 0.15, 0.8, 1],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const SizedBox(height: AppSize.size32,),
              const UserBalance(),
              const SizedBox(height: AppSize.size28,),
              CreditCardCarousel(),
              const SizedBox(height: AppSize.size40,),
              FinanceCarousel(),
              const Spacer(),
              BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedItemColor: Colors.white,
                backgroundColor: Colors.black,
                selectedItemColor: AppColors.accentYellow,
                type: BottomNavigationBarType.fixed,
                items: AppBottomBarItem.generate([
                  Assets.icons.iconHome2pxLine.path,
                  Assets.icons.iconBag2pxLine.path,
                  Assets.icons.iconCard2pxLine.path,
                  Assets.icons.iconChat2pxLine.path,
                  Assets.icons.iconTime2pxLine.path
                ]),
                currentIndex: _navIndex,
                onTap: (index) {
                  setState(() {
                    _navIndex = index;
                  });
                },
              ).cornerRadius(AppRadius.rad16),
            ],
          ),
        ),
      ),
    );
  }
}
