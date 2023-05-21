import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/config/function.dart';
import 'package:reseau_social_droit/views/home/expert/expert-page.dart';
import 'package:reseau_social_droit/views/home/feed-principal-page.dart';
import 'package:reseau_social_droit/views/home/messages/message-page.dart';
import 'package:reseau_social_droit/views/profil-page.dart';
import 'package:reseau_social_droit/views/publication/publication.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "AppName",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Config.colors.primaryColor,
            ),
          ),
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
                })
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                child: Text(
                  "Feed principal",
                  style: TextStyle(color: Config.colors.textColor),
                ),
              ),
              Tab(
                child: Text(
                  "Experts",
                  style: TextStyle(color: Config.colors.textColor),
                ),
              ),
              Tab(
                child: Text(
                  "Messages",
                  style: TextStyle(color: Config.colors.textColor),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            right: 3,
            left: 3,
            top: 30,
          ),
          child: TabBarView(
            controller: _controller,
            children: [
              SingleChildScrollView(child: FeedPrincipalPage()),
              ExpertPage(),
              MessagePage(),
            ],
          ),
          // child: Column(
          //   children: [
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15),
          //   child: CustomTabView(
          //     index: _selectTag,
          //     changeTab: changeTab,
          //   ),
          // ),
          // Expanded(
          //   child: SingleChildScrollView(
          //     child: Padding(
          //       padding: const EdgeInsets.only(top: 20),
          //       child: _selectTag == 0
          //           ? FeedPrincipalPage()
          //           : _selectTag == 1
          //               ? ExpertPage()
          //               : MessagePage(),
          //     ),
          //   ),
          // )
          //   ],
          // ),
        ),
      ),
    );
  }
}

// class CustomTabView extends StatefulWidget {
//   final Function(int) changeTab;
//   final int index;
//   const CustomTabView({
//     super.key,
//     required this.changeTab,
//     required this.index,
//   });

//   @override
//   State<CustomTabView> createState() => _CustomTabViewState();
// }

// class _CustomTabViewState extends State<CustomTabView> {
//   final List<String> _tags = ["Feed Principal", "Nos experts", "Messages"];

//   Widget _buildTags(int index) {
//     return GestureDetector(
//       onTap: () {
//         widget.changeTab(index);
//       },
//       child: Column(
//         children: [
//           Text(
//             _tags[index],
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: widget.index == index ? FontWeight.bold : null,
//               color: widget.index == index
//                   ? Config.colors.primaryColor
//                   : Config.colors.textColor,
//             ),
//           ),
//           widget.index == index
//               ? Padding(
//                   padding: const EdgeInsets.only(top: 5.0),
//                   child: Container(
//                     height: 3,
//                     width: widget.index == 0
//                         ? 110
//                         : widget.index == 1
//                             ? 90
//                             : 70,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(3),
//                       color: Config.colors.primaryColor,
//                     ),
//                   ),
//                 )
//               : Container()
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 15),
//       width: double.infinity,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: _tags
//             .asMap()
//             .entries
//             .map((MapEntry map) => _buildTags(map.key))
//             .toList(),
//       ),
//     );
//   }
// }
