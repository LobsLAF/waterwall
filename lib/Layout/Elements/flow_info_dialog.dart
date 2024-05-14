import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';
import 'package:waterwall/Data/my_default_style.dart';

class FlowInfoDialog extends StatelessWidget {
  const FlowInfoDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: MyDefaultStyle(
        child: Container(
          height: 50,
          width: 260,
          decoration: BoxDecoration(
              color: LayoutData.yellow,
              borderRadius: BorderRadius.circular(2000)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Nível da água:"),
            ],
          ),
        ),
      ),
    );
  }
}
