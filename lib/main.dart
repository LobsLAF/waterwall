import 'package:flutter/material.dart';
import 'package:waterwall/Data/db_connection.dart';
import 'package:waterwall/Layout/Screens/app_screen_h.dart';
import 'Layout/Screens/app_screen_v.dart';

void main() {
  DbConnection connectionHandler = DbConnection();

  connectionHandler.startConnection();

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
        home: getScreen(context));
  }
}

Widget getScreen(BuildContext context) {
  if (MediaQuery.of(context).size.height > MediaQuery.of(context).size.width) {
    return const AppScreenV();
  } else {
    return const AppScreenH();
  }
}
