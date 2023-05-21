import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/models/expert-modal.dart';
import 'package:reseau_social_droit/views/profil-page.dart';

class DetailExpert extends StatefulWidget {
  final ExpertModal expertModal;
  const DetailExpert({super.key, required this.expertModal});

  @override
  State<DetailExpert> createState() => _DetailExpertState();
}

class _DetailExpertState extends State<DetailExpert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.textColor),
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.search,
            color: Config.colors.grayColor,
          ),
          SizedBox(
            width: 5,
          ),
          PopupMenuButton<String>(
            onSelected: (selected) {
              if (selected == "Profil") {
                route(context, ProfilUserPage());
              }
            },
            icon: Icon(
              Icons.more_vert,
              color: Config.colors.grayColor,
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Profil"),
                  value: "Profil",
                ),
                PopupMenuItem(
                  child: Text("Paramètres"),
                  value: "Paramètres",
                ),
                PopupMenuItem(
                  child: Text("Aides et assistance"),
                  value: "Aides et assistance",
                ),
                PopupMenuItem(
                  child: Text("Propos"),
                  value: "Propos",
                ),
                PopupMenuItem(
                  child: Text(
                    "Déconnexion",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Config.colors.redColor,
                    ),
                  ),
                  value: "Déconnexion",
                ),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: width(context),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(widget.expertModal.photo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.expertModal.fonction,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Config.colors.primaryColor,
                      ),
                    ),
                    Text(
                      widget.expertModal.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Config.colors.textColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Config.colors.backgroundTextField,
                        ),
                        child: Icon(
                          Icons.message,
                          size: 25,
                          color: Config.colors.primaryColor,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Config.colors.callColorBacgroubd,
                        ),
                        child: Icon(
                          Icons.call,
                          size: 25,
                          color: Config.colors.callColor,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Config.colors.callVideoColorBacgroubd,
                        ),
                        child: Icon(
                          Icons.videocam_rounded,
                          size: 25,
                          color: Config.colors.secondaryColor,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Config.colors.locationColorBackground,
                        ),
                        child: Icon(
                          Icons.location_on,
                          size: 25,
                          color: Config.colors.locationColor,
                        ),
                      ),
                    ],
                  ),
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
                        widget.expertModal.biographie,
                        style: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Compétences",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width(context),
                      child: Text(
                        widget.expertModal.competence,
                        style: TextStyle(
                          color: Config.colors.grayColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Experiences",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width(context),
                      child: Text(
                        widget.expertModal.experience,
                        style: TextStyle(
                          color: Config.colors.grayColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
