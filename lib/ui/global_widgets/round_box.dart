import 'package:flutter/material.dart';

import '../../utils/ui_constants/box_decorations.dart';

class RoundBox extends StatelessWidget {
  const RoundBox({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorations.circularBorderRadius,
      child: child,
    );
  }
}
