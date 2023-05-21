import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/Register/registerChose.dart';
import 'package:reseau_social_droit/views/login-page.dart';
import 'package:reseau_social_droit/widgets/button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Config.asset.hammer),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(color: Color.fromARGB(240, 0, 24, 48)),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: width(context),
                        child: Column(
                          children: [
                            Text(
                              "Lorem ipsum dolor",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Config.colors.whithColor,
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
                                    color: Config.colors.whithColor,
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
                              style: TextStyle(
                                  fontSize: 13, color: Config.colors.grayColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: [
                        CButton(
                          title: "Inscription",
                          color: Config.colors.primaryColor,
                          titleColor: Config.colors.whithColor,
                          onPressed: () {
                            route(context, RegisterChose());
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CButton(
                          title: "Connexion",
                          color: Colors.transparent,
                          titleColor: Config.colors.whithColor,
                          sideWidth: 3,
                          onPressed: () {
                            route(context, LoginPage());
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -200,
            top: 0,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Config.asset.circle),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: -200,
            top: -200,
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Config.asset.circle),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: width(context) * 0.3,
            top: width(context) * 0.4,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Config.asset.circle),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// CButton(title: "Connexion", onPressed: () {})