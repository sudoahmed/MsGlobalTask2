import 'package:flutter/material.dart';
import 'package:ms_global_task2/screens/chat_screen.dart';
import 'package:ms_global_task2/screens/package_screen.dart';
import 'package:ms_global_task2/screens/pickup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      routes: {
        '/': (context) => const PackageScreen(),
        '/pickup': (context) => const PickupScreen(),
        // '/package': (context) => const PackageScreen(),
      },
    );
  }
}
