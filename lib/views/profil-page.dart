import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/publication/publication.dart';

class ProfilUserPage extends StatelessWidget {
  const ProfilUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Config.colors.textColor),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Profil",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Config.colors.textColor,
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Config.colors.primaryColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(13)),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Config.colors.primaryColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(Config.asset.image1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "Dindji Severin .W",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Avocat Juriste")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Biographie",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'severindindji68@gmail.com',
                        style: TextStyle(
                            color: Config.colors.textColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '05 04 84 10 19 ',
                        style: TextStyle(
                            color: Config.colors.textColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Mes publications",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            route(context, PublicationPage());
                          },
                          child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Config.colors.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(13)),
                              child: Text(
                                "Faire une publication",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.primaryColor,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Dindji Severin .W",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "a publié ce contenu . 5j",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Config.colors.grayColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width(context) * 0.7,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                Config.asset.image4,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                            child: Text("45 . 7 commentaires "),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Dindji Severin .W",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "a publié ce contenu . 8j",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Config.colors.grayColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width(context) * 0.7,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                Config.asset.image6,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                            child: Text("87 . 23 commentaires "),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Voir toutes mes publication",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Config.colors.grayColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Config.colors.grayColor,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 50,
                thickness: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Compétences",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Config.colors.grayColor,
                          ),
                          Icon(
                            Icons.edit,
                            color: Config.colors.grayColor,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Aucune competence ajouter ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Config.colors.grayColor,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50,
                thickness: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Experiences",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Config.colors.grayColor,
                          ),
                          Icon(
                            Icons.edit,
                            color: Config.colors.grayColor,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Aucune experience ajouter ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Config.colors.grayColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
