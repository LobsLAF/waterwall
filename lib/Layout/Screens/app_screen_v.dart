import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';
import '../../Data/my_default_style.dart';
import '../Elements/drawer_content.dart';

class AppScreenV extends StatelessWidget {
  const AppScreenV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(color: LayoutData.white),
      child: Scaffold(
        backgroundColor: LayoutData.blue,
        body: MyDefaultStyle(
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
                        topLeft: Radius.circular(LayoutData.drawerBorderRadius),
                        topRight:
                            Radius.circular(LayoutData.drawerBorderRadius),
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
