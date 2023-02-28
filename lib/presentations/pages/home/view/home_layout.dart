import 'package:bank_template/presentations/pages/home/widgets/home_app_bar.dart';
import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),

          ],
        ),
      ),
    );
  }
}
