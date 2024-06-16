import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/app_colors.dart';
import 'package:lafyuu/utils/ui_constants/sized_boxes.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class AppBarProductDetail extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarProductDetail({super.key, this.appBarTitle, this.actions});

  final String? appBarTitle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 78,
      elevation: 2,
      actions: actions != null
          ? const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                    ),
                    SizedBoxes.w16,
                    Icon(
                      Icons.more_vert_rounded,
                    ),
                  ],
                ),
              )
            ]
          : null,
      backgroundColor: AppColors.backgroundWhite,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
      ),
      title: Text(
        appBarTitle ?? 'Product Name',
        style: TextStyles.neutralDarkStyleSize24,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(78);
}
