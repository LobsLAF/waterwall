import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Projeto Water Wall',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const AppScreen());
  }
}

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  final int imgHeight = 172;
  final double drawerBorderRadius = 48;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 179, 225),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "Dashboard WaterWall",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(drawerBorderRadius),
                    topRight: Radius.circular(drawerBorderRadius),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
