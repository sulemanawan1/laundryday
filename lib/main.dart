import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Resources/Colors/colors.dart';
import 'Routes/app_routes.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set the status bar color here
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes().routes,
      theme: ThemeData(primaryColor: primaryColor, useMaterial3: false),
      debugShowCheckedModeBanner: false,
    );
  }
}
