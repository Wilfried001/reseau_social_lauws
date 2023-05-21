import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/models/message-model.dart';
import 'package:reseau_social_droit/views/profil-page.dart';
import 'package:reseau_social_droit/widgets/textField.dart';

class IndividualMessage extends StatefulWidget {
  const IndividualMessage({super.key, required this.messageModel});
  final MessageModel messageModel;

  @override
  State<IndividualMessage> createState() => _IndividualMessageState();
}

class _IndividualMessageState extends State<IndividualMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        elevation: 0,
        backgroundColor: Config.colors.primaryColor,
        title: Text(
          widget.messageModel.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Config.colors.whithColor,
          ),
        ),
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 24,
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(widget.messageModel.photo),
                ),
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.call,
            color: Config.colors.whithColor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.videocam_sharp,
            color: Config.colors.whithColor,
          ),
          PopupMenuButton<String>(
            onSelected: (selected) {
              if (selected == "Profil") {
                route(context, ProfilUserPage());
              }
            },
            icon: Icon(
              Icons.more_vert,
              color: Config.colors.whithColor,
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
          ),
        ],
      ),
      body: Container(
        height: height(context),
        width: height(context),
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: width(context) - 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CtextField(
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.attach_file),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt),
                            ),
                          ],
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.emoji_emotions),
                        ),
                        contentPadding: EdgeInsets.all(5),
                        hint: "Entrez votre message...",
                        raduis: 50,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
