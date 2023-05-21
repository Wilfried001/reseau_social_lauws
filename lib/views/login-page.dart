import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/Register/registerChose.dart';
import 'package:reseau_social_droit/views/home/menu-home.dart';
import 'package:reseau_social_droit/widgets/button.dart';
import 'package:reseau_social_droit/widgets/textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Config.colors.textColor,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: height(context) * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Connexion",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Config.colors.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CtextField(hint: "Username ou email"),
                    SizedBox(
                      height: 10,
                    ),
                    CtextField(hint: "Mot de passe"),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mot de passe oublié?",
                          style: TextStyle(
                            color: Config.colors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CButton(
                      title: "Connexion",
                      onPressed: () {
                        route(context, MenuHome(), close: true);
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n’avez pas de compte?",
                    ),
                    TextButton(
                      onPressed: () {
                        route(
                          context,
                          RegisterChose(),
                        );
                      },
                      child: Text(
                        "Inscrivez-vous",
                        style: TextStyle(
                          color: Config.colors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
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
