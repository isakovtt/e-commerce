import 'package:flutter/material.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_images.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: SizedBox(
        height: 206,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 4),
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
            children: [
              Image.asset(
                Images.imageProductTwo,
                fit: BoxFit.cover,
                width: 380,
              ),
              const Positioned(
                left: 24,
                top: 32,
                child: SizedBox(
                  width: 209,
                  child: Text(
                    'Super Flash Sale 50% OFF ',
                    maxLines: 2,
                    style: TextStyle(
                        color: AppColors.backgroundWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // const TimerSlideCount(),
            ],
          ),
        ),
      ),
    );
  }
}
