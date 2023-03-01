import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.7,
      height: MediaQuery.of(context).size.width / 3.7,
      decoration: BoxDecoration(
          color: AppColors.smallCardBg,
          borderRadius: BorderRadius.circular(AppRadius.rad26)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.pad16),
            child: AppBadge(iconImage: Assets.icons.star.imageWidget(),)
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.pad16, bottom: AppPadding.pad14, right: AppPadding.pad16),
            child: Text('Finance analysis',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: AppFontSize.fontSize11, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
