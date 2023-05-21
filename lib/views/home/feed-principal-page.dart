import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';

class FeedPrincipalPage extends StatelessWidget {
  const FeedPrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Config.colors.whithColor,
            boxShadow: [
              BoxShadow(
                color: Config.colors.backgroundTextField, //New
                blurRadius: 3,
              )
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Config.asset.image7),
                            ),
                            borderRadius: BorderRadius.circular(
                              40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dindji Severin",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Il y a 8h",
                                  style: TextStyle(
                                    color: Config.colors.grayColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: Config.colors.grayColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem ipsum dolor sit amet. In obcaecati excepturi eum rerum aliquid non recusandae tenetur est adipisci illum. Sed quam blanditiis non odio soluta sed quibusdam facere est...",
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 240,
                  width: width(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(Config.asset.image8),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            color: Config.colors.primaryColor,
                          ),
                          Positioned(
                            right: 0,
                            child: Icon(
                              Icons.favorite,
                              color: Config.colors.redColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text("Péné Mric et 53 autres personnes "),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.thumb_up_alt_rounded,
                              color: Config.colors.grayColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "54",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.comment, color: Config.colors.grayColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "12",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.share, color: Config.colors.grayColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "2",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Config.colors.whithColor,
            boxShadow: [
              BoxShadow(
                color: Config.colors.backgroundTextField, //New
                blurRadius: 3,
              )
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Config.asset.image7),
                            ),
                            borderRadius: BorderRadius.circular(
                              40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Maïtre George Gregoire",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Il y a 1h",
                                  style: TextStyle(
                                    color: Config.colors.grayColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: Config.colors.grayColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem ipsum dolor sit amet. In obcaecati excepturi eum rerum aliquid non recusandae tenetur est adipisci illum. Sed quam blanditiis non odio soluta sed quibusdam facere est...",
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 240,
                  width: width(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(Config.asset.image9),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            color: Config.colors.primaryColor,
                          ),
                          Positioned(
                            right: 0,
                            child: Icon(
                              Icons.favorite,
                              color: Config.colors.redColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text("Vous, Péné Mric et 85 autres personnes "),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.thumb_up_alt_rounded,
                              color: Config.colors.primaryColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "82",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.comment, color: Config.colors.grayColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "23",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width(context) * 0.29,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.backgroundTextField,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.share, color: Config.colors.grayColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "10",
                            style: TextStyle(color: Config.colors.grayColor),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
