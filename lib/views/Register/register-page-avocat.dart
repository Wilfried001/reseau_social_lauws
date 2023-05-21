import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/add-picture.dart';
import 'package:reseau_social_droit/views/login-page.dart';
import 'package:reseau_social_droit/widgets/button.dart';
import 'package:reseau_social_droit/widgets/textField.dart';

class RegisterPageAvocat extends StatefulWidget {
  const RegisterPageAvocat({super.key});

  @override
  State<RegisterPageAvocat> createState() => _RegisterPageAvocatState();
}

class _RegisterPageAvocatState extends State<RegisterPageAvocat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CtextField(
                          hint: "Nom",
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CtextField(
                          hint: "Prénoms",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CtextField(hint: "Username ou email"),
                  SizedBox(
                    height: 10,
                  ),
                  CtextField(hint: "Télephone"),
                  SizedBox(
                    height: 10,
                  ),
                  CtextField(hint: "Fonctions"),
                  SizedBox(
                    height: 10,
                  ),
                  CtextField(hint: "Mot de passe"),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CButton(
                    title: "Inscription",
                    onPressed: () {
                      route(context, AddPicture());
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
