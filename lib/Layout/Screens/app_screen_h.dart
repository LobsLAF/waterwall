import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';
import 'package:waterwall/Layout/Elements/water_tank.dart';

class AppScreenH extends StatelessWidget {
  const AppScreenH({
    super.key,
  });

  static const double drawerBorderRadius = 48;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(color: LayoutData.white),
      child: Scaffold(
        backgroundColor: LayoutData.blue,
        body: DefaultTextStyle.merge(
          style: const TextStyle(
            fontFamily: 'mclaren',
            fontSize: 24,
            color: Colors.white,
          ),
          child: Center(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Dashboard WaterWall",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Image.asset(
                          "assets/images/Logo.png",
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(drawerBorderRadius),
                            bottomLeft: Radius.circular(drawerBorderRadius),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: AppScreenH.drawerBorderRadius / 3,
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
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
