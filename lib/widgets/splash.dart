import 'dart:async';
import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/first-page.dart';
import 'package:reseau_social_droit/views/login-page.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({
    super.key,
    this.time = 3,
    required this.child,
  });
  final int time;
  final Widget child;

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: widget.time), () {
      route(context, FirstPage(), close: true);
    });
    return widget.child;
  }
}
