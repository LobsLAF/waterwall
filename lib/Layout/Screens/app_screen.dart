import 'package:flutter/material.dart';
import 'package:waterwall/Data/color_data.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  static const double drawerBorderRadius = 48;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(color: ColorData.white),
      child: Scaffold(
        backgroundColor: ColorData.blue,
        body: DefaultTextStyle.merge(
          style: const TextStyle(
            fontFamily: 'mclaren',
            fontSize: 24,
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Dashboard WaterWall",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/Logo.png",
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(drawerBorderRadius),
                        topRight: Radius.circular(drawerBorderRadius),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: AppScreen.drawerBorderRadius / 3,
                              bottom: 12),
                          child: Container(
                            height: 50,
                            width: 260,
                            decoration: BoxDecoration(
                                color: ColorData.yellow,
                                borderRadius: BorderRadius.circular(2000)),
                            child: const Center(
                              child: Text("Nível da água:"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 5 / 6,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: ColorData.darkBlue,
                                  borderRadius: BorderRadius.circular(
                                      drawerBorderRadius / 3)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            12,
                          ),
                          child: Container(
                            height: 50,
                            width: 260,
                            decoration: BoxDecoration(
                                color: ColorData.yellow,
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
                                          color: ColorData.blue,
                                        ),
                                      ),
                                      Text(
                                        "Hoje:",
                                        style: TextStyle(
                                          color: ColorData.blue,
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
                                          color: ColorData.blue,
                                        ),
                                      ),
                                      Text(
                                        "y l",
                                        style: TextStyle(
                                          color: ColorData.blue,
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
