import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';
import 'package:waterwall/Layout/Elements/drawer_content.dart';

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
                    child: const DrawerContent(),
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
