import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/Register/registe-page-client.dart';
import 'package:reseau_social_droit/views/Register/register-page-avocat.dart';
import 'package:reseau_social_droit/views/login-page.dart';

class RegisterChose extends StatefulWidget {
  const RegisterChose({super.key});

  @override
  State<RegisterChose> createState() => _RegisterChoseState();
}

class _RegisterChoseState extends State<RegisterChose> {
  int _selectTag = 0;

  void changeTab(int index) {
    setState(() {
      _selectTag = index;
    });
  }

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
            height: height(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Inscription",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Config.colors.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTabView(
                      index: _selectTag,
                      changeTab: changeTab,
                    ),
                    _selectTag == 0
                        ? RegisterClientPage()
                        : RegisterPageAvocat(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vous avez déja un compte?",
                        ),
                        TextButton(
                          onPressed: () {
                            route(
                              context,
                              LoginPage(),
                            );
                          },
                          child: Text(
                            "Connectez-vous",
                            style: TextStyle(
                              color: Config.colors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
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

class CustomTabView extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  const CustomTabView({
    super.key,
    required this.changeTab,
    required this.index,
  });

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  final List<String> _tags = ["Client", "Avocat"];

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        widget.changeTab(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: height(context) * 0.085,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: widget.index == index ? Config.colors.primaryColor : null,
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: widget.index == index
                ? Config.colors.whithColor
                : Config.colors.textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Config.colors.backgroundTextField,
      ),
      child: Row(
        children: _tags
            .asMap()
            .entries
            .map((MapEntry map) => _buildTags(map.key))
            .toList(),
      ),
    );
  }
}
