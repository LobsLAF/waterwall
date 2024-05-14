import 'package:flutter/material.dart';

class MyDefaultStyle extends StatelessWidget {
  final Widget child;

  const MyDefaultStyle({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontFamily: 'mclaren',
        fontSize: 24,
        color: Colors.white,
      ),
      child: child,
    );
  }
}
