import 'package:bank_ui_kit/shelf.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard(
      {Key? key,
      required this.imageIcon,
      required this.bgColor,
      required this.name})
      : super(key: key);

  final Image imageIcon;
  final Color bgColor;
  final String name;

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
              child: AppBadge(
                iconImage: imageIcon,
                background: bgColor,
              )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.pad16,
                bottom: AppPadding.pad14,
                right: AppPadding.pad16),
            child: Text(name,
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
