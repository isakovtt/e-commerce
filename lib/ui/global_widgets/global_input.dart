import 'package:flutter/material.dart';

import '../../utils/ui_constants/input_decorations.dart';

class GlobalInput extends StatelessWidget {
  const GlobalInput({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.obscureText,
    this.controller,
    this.validator,
    this.style, this.maxLines,
  });
  final Widget? prefixIcon;
  final String? hintText;
  final bool? obscureText;
  final TextStyle? style;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(maxLines: maxLines,
        controller: controller,
        validator: validator,
        // obscureText: obscureText ?? false,
        cursorColor: Colors.black,
        style: style ?? InputDecorations.inputTextStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: InputDecorations.hintTextStyle,
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.amber,
          focusedBorder: InputDecorations.activeOutlineInput,
          enabledBorder: InputDecorations.outlineInput,
        ));
  }
}
