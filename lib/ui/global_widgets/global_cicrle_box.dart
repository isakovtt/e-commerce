import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/box_decorations.dart';

class GlobalCircleBox extends StatelessWidget {
  const GlobalCircleBox({super.key, this.child, this.color});
  final Widget? child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecorations.circularBorderRadius36,
      color: color,
      child: child,
    );
  }
}
