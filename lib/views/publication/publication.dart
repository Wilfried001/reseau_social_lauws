import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/widgets/button.dart';

class PublicationPage extends StatelessWidget {
  const PublicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Publication",
          style: TextStyle(
            color: Config.colors.textColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              "Publier",
              style: TextStyle(
                fontSize: 16,
                color: Config.colors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Config.colors.textColor,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context) * 0.88,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Contenu de la publication......",
                  filled: true, //<-- SEE HERE
                  fillColor: Config.colors.backgroundTextField,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                maxLines: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.photo_camera,
                        size: 30,
                        color: Config.colors.grayColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.video_call_rounded,
                        size: 30,
                        color: Config.colors.grayColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.image,
                        size: 30,
                        color: Config.colors.grayColor,
                      ),
                    ],
                  ),
                  CButton(
                    title: "Publier",
                    onPressed: () {},
                    height: 50,
                    width: width(context) * 0.36,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
