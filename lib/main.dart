import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reseau_social_droit/views/SplashScreen.dart';
import 'package:reseau_social_droit/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'EBGaramond',
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(
        child: SplashScreen(),
      ),
    );
  }
}
