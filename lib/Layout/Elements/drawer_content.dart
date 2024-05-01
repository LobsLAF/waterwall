import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';
import 'package:waterwall/Layout/Elements/water_tank.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: LayoutData.drawerBorderRadius / 3,
              bottom: 12),
          child: Container(
            height: 50,
            width: 260,
            decoration: BoxDecoration(
                color: LayoutData.yellow,
                borderRadius: BorderRadius.circular(2000)),
            child: const Center(
              child: Text("Nível da água:"),
            ),
          ),
        ),
        WaterTank(),
        Padding(
          padding: const EdgeInsets.all(
            12,
          ),
          child: Container(
            height: 50,
            width: 260,
            decoration: BoxDecoration(
                color: LayoutData.yellow,
                borderRadius: BorderRadius.circular(2000)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info,
                    size: 34,
                  ),
                ),
                const Text("Vazão da água:"),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: SizedBox(
            width: 300,
            height: 80,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Última hora:",
                        style: TextStyle(
                          color: LayoutData.blue,
                        ),
                      ),
                      Text(
                        "Hoje:",
                        style: TextStyle(
                          color: LayoutData.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "x ml",
                        style: TextStyle(
                          color: LayoutData.blue,
                        ),
                      ),
                      Text(
                        "y l",
                        style: TextStyle(
                          color: LayoutData.blue,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
