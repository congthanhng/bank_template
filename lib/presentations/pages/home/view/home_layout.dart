import 'package:bank_template/presentations/pages/home/widgets/home_app_bar.dart';
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
      backgroundColor: AppColors.grayBase3, // set again in future
      body: SafeArea(
        child: Column(
          children: const [
            HomeAppBar(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColors.primaryBg,
        selectedItemColor: AppColors.accentYellow,
        type: BottomNavigationBarType.fixed,
        items:  AppBottomBarItem.generate([
          Assets.icons.iconHome2pxLine.path,
          Assets.icons.iconBag2pxLine.path,
          Assets.icons.iconCard2pxLine.path,
          Assets.icons.iconChat2pxLine.path,
          Assets.icons.iconTime2pxLine.path
        ]),
        currentIndex: _navIndex,
        onTap: (index){
          setState(() {
            _navIndex = index;
          });
        },
      ).cornerRadius(AppRadius.rad16),
    );
  }
}
