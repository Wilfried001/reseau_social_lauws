import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/second-page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height(context) * 0.5,
              width: width(context) * 0.55,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Config.asset.firstImage,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: width(context),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Config.colors.textColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "amet,",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Config.colors.textColor,
                        ),
                      ),
                      Text(
                        " adipiscing",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Config.colors.primaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
                    style:
                        TextStyle(fontSize: 13, color: Config.colors.grayColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: height(context) * 0.2,
                width: width(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        route(context, SecondPage(), close: true);
                      },
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          gradient: Config.colors.linearGradient,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 30,
                          color: Config.colors.whithColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
