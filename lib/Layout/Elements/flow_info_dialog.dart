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
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const BackButtonIcon(),
              ),
              const Text("Vazão da água:"),
            ],
          ),
        ),
      ),
      content: const MyDefaultStyle(
        textColor: LayoutData.blue,
        child: IntrinsicHeight(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Últimos registros:"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Previsões:"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
