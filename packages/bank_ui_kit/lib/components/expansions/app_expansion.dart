import 'package:bank_ui_kit/shelf.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class AppExpansion extends StatelessWidget {
  const AppExpansion(
      {Key? key,
      required this.children,
      required this.title, this.isTrailing = false})
      : super(key: key);

  final String title;
  final bool isTrailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileWithoutBorderItem(
      isHasTrailing: false,
      initiallyExpanded: true,
      title: Row(
        children: [
          const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.grayBase3,
          ),
          const SizedBox(
            width: AppPadding.pad10,
          ),
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white, fontSize: AppFontSize.fontSize10),
          ),
          const Spacer(),
          isTrailing
              ? Container(
                  decoration: BoxDecoration(
                      color: AppColors.grayBase3,
                      borderRadius: BorderRadius.circular(AppRadius.rad26)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.actionPlus,
                      size: AppSize.size16,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
      children: children,
    );
  }
}
