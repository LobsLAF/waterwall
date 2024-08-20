import 'package:flutter/material.dart';
import 'package:waterwall/Data/db_connection.dart';
import 'package:waterwall/Data/layout_data.dart';

class WaterTank extends StatefulWidget {
  const WaterTank({
    super.key,
  });

  @override
  State<WaterTank> createState() => _WaterTankState();
}

class _WaterTankState extends State<WaterTank> {
  final double maxVolume = 220;

  late Future<String> currentVolume;

  @override
  void initState() {
    super.initState();
    currentVolume = DbConnection.instance.getCurrentVolume();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 5 / 6,
        child: LayoutBuilder(
          builder: (context, constraints) {
            LayoutData.tankHeight = constraints.maxHeight;

            LayoutData.tankWidth = constraints.maxWidth;

            return FutureBuilder<String>(
              future: currentVolume,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text(
                    'Erro: ${snapshot.error}, Data: ${snapshot.data}',
                    style: const TextStyle(color: Colors.black),
                  );
                } else {
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
                            (constraints.maxHeight *
                                double.parse(snapshot.data ?? '0') /
                                maxVolume),
                        child: Container(
                          height: LayoutData.tankHeight,
                          width: LayoutData.tankWidth,
                          decoration:
                              const BoxDecoration(color: LayoutData.blue),
                        ),
                      ),
                      Center(
                        child: Text(
                          "${snapshot.data} l",
                          style: TextStyle(
                              fontSize: 32 * constraints.maxHeight / 200),
                        ),
                      )
                    ],
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
