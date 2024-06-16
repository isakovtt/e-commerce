import 'package:flutter/material.dart';

class Navigate {
void   navigatePush(context, page) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );

 void  navigateReplacePush(context, page) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => page),
      );

  void navigatePop(context, page) => Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
}
