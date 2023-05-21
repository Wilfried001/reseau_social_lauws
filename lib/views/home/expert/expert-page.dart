import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/models/expert-modal.dart';
import 'package:reseau_social_droit/views/home/expert/details-expert-page.dart';
import 'package:reseau_social_droit/views/home/expert/expert-ui-page.dart';

class ExpertPage extends StatefulWidget {
  const ExpertPage({super.key});

  @override
  State<ExpertPage> createState() => _ExpertPageState();
}

class _ExpertPageState extends State<ExpertPage> {
  List<ExpertModal> expertModal = [
    ExpertModal(
      name: "Maitre Adama Kamara ",
      biographie:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      competence: 'Aucune Competence ajoutée',
      experience: 'Aucune Experience ajoutée',
      fonction: 'Administrateur judiciaire.',
      location: 'Abidjan, Cocody-Angré 7eme tranche',
      experienceYear: '10',
      favorite: true,
      photo: Config.asset.image1,
    ),
    ExpertModal(
      name: "N'Datien Séverin GUIBESSONGUI ",
      biographie:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      competence: 'Aucune Competence ajoutée',
      experience: 'Aucune Experience ajoutée',
      fonction: 'Avocat.',
      location: 'Abidjan, Cocody-Angré 7eme tranche',
      experienceYear: '7',
      favorite: false,
      photo: Config.asset.image7,
    ),
    ExpertModal(
      name: "Khisy H Ingrid Yodé",
      biographie:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      competence: 'Aucune Competence ajoutée',
      experience: 'Aucune Experience ajoutée',
      fonction: 'Avocat.',
      location: 'Abidjan, Bingerville  ',
      experienceYear: '25',
      favorite: false,
      photo: Config.asset.image9,
    ),
    ExpertModal(
      name: "Maitre Adama Kamara ",
      biographie:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      competence: 'Aucune Competence ajoutée',
      experience: 'Aucune Experience ajoutée',
      fonction: 'Administrateur judiciaire',
      location: 'Abidjan, Bingerville  ',
      experienceYear: '13',
      favorite: false,
      photo: Config.asset.image10,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: expertModal.length,
        itemBuilder: (context, index) => ExpertUiPage(
          expertModal: expertModal[index],
        ),
      ),
    );
  }
}
