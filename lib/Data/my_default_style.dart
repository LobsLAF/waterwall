import 'package:flutter/material.dart';

class MyDefaultStyle extends StatelessWidget {

  final Widget child;
  final Color textColor;

  const MyDefaultStyle({
    super.key,
    required this.child,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'mclaren',
        fontSize: 24,
        color: textColor,
      ),
      child: child,
    );
  }
}
