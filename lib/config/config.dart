import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final asset = _Asset();
}

class _Color {
  final primaryColor = Color(0xFF0A66C2);
  final secondaryColor = Color(0xFF121314);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color.fromARGB(255, 1, 26, 49);
  final grayColor = Color(0xFF9C9494);
  final backgroundTextField = Color(0xffCEE0F3);
  final redColor = Color(0xFFFF2F2F);
  final locationColor = Color(0xFFFC5812);
  final locationColorBackground = Color(0xFFFEDED0);
  final callColor = Color(0xFFB54646);
  final callColorBacgroubd = Color(0xFFF0DADA);
  final callVideoColorBacgroubd = Color(0xFFD0D0D0);
  final linearGradient = LinearGradient(
    colors: [Color(0xFF0A66C2), Color(0xffCEE0F3)],
  );
}

class _Asset {
  final image1 = "assets/images/image1.png";
  final image2 = "assets/images/image2.png";
  final image3 = "assets/images/image3.png";
  final image4 = "assets/images/image4.png";
  final logoPrincipale = "assets/images/logo.png";
  final image5 = "assets/images/images5.png";
  final image6 = "assets/images/images6.png";
  final image7 = "assets/images/image7.jpeg";
  final image8 = "assets/images/image8.jpeg";
  final image9 = "assets/images/image9.jpeg";
  final image10 = "assets/images/image10.jpeg";
  final image11 = "assets/images/images11.jpeg";
  final logo = "assets/images/logo.jpeg";
  final logo1 = "assets/images/logo1.jpeg";
  final logo2 = "assets/images/logo2.jpeg";
  final firstImage = "assets/images/firstImage.png";
  final hammer = "assets/images/hammer.jpg";
  final circle = "assets/images/circle.png";
}
