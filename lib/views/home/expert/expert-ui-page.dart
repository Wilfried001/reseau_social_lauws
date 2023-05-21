import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/models/expert-modal.dart';
import 'package:reseau_social_droit/views/home/expert/details-expert-page.dart';

class ExpertUiPage extends StatelessWidget {
  const ExpertUiPage({super.key, required this.expertModal});
  final ExpertModal expertModal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 200,
        width: width(context),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Config.colors.backgroundTextField, //New
              blurRadius: 3,
            )
          ],
          color: Config.colors.whithColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(expertModal.photo),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Config.colors.primaryColor,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          expertModal.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          expertModal.fonction,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Config.colors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Année d’experience : ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              expertModal.experienceYear,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.primaryColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Config.colors.grayColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: width(context) * 0.5,
                              child: Text(
                                expertModal.location,
                                style: TextStyle(fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            route(
                              context,
                              DetailExpert(
                                expertModal: expertModal,
                              ),
                            );
                          },
                          child: Text(
                            "Voir détails",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
