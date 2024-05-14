import 'package:flutter/material.dart';
import 'package:waterwall/Data/layout_data.dart';

class WaterTank extends StatefulWidget {
  const WaterTank({
    super.key,
  });

  @override
  State<WaterTank> createState() => _WaterTankState();
}

class _WaterTankState extends State<WaterTank> {
  final double maxVolume = 2200;

  late double currentVolume = 1500;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 5 / 6,
        child: LayoutBuilder(
          builder: (context, constraints) {
            LayoutData.tankHeight = constraints.maxHeight;

            LayoutData.tankWidth = constraints.maxWidth;

            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: LayoutData.darkBlue,
                    borderRadius: BorderRadius.circular(
                        LayoutData.drawerBorderRadius / 3),
                  ),
                ),
                Positioned(
                  top: constraints.maxHeight -
                      (constraints.maxHeight * currentVolume / maxVolume),
                  child: Container(
                    height: LayoutData.tankHeight,
                    width: LayoutData.tankWidth,
                    decoration: const BoxDecoration(color: LayoutData.blue),
                  ),
                ),
                Center(
                  child: Text(
                    "${currentVolume.toStringAsFixed(1)} l",
                    style: TextStyle(
                      fontSize: 32 * constraints.maxHeight / 200
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
