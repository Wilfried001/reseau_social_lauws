import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.colors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
          ),
          Image.asset(
            Config.asset.logoPrincipale,
            width: width(context) * 0.8,
          ),
          CircularProgressIndicator(
            color: Config.colors.secondaryColor,
          )
        ],
      ),
    );
  }
}
