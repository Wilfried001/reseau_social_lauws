import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';
import 'package:reseau_social_droit/models/message-model.dart';
import 'package:reseau_social_droit/views/home/messages/user-messages-ui.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<MessageModel> messages = [
    MessageModel(
      name: "Dindji Severin",
      CurrentMessage: 'Salut comment tu vas?',
      photo: Config.asset.image2,
      time: '18:10',
      UnreadMessage: true,
      NumberUnreadMessage: '2',
    ),
    MessageModel(
      name: "Kouassi Yao W",
      CurrentMessage: 'Swings and roundabout',
      photo: Config.asset.image7,
      time: '18:02',
      UnreadMessage: true,
      NumberUnreadMessage: '2',
    ),
    MessageModel(
      name: "N'guessant yao",
      CurrentMessage: 'At least one of the big boondoggles to finance',
      photo: Config.asset.image9,
      time: '18:00',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Khisy H Ingrid Yodé",
      CurrentMessage: 'At least one of the big boondoggles to finance',
      photo: Config.asset.image9,
      time: '10:10',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Maitre KARIDJA	BAKARY ",
      CurrentMessage: 'At least one of the big boondoggles to finance',
      photo: Config.asset.image10,
      time: '10:12',
      UnreadMessage: true,
      NumberUnreadMessage: '1',
    ),
    MessageModel(
      name: "Maitre AMENAN YAYA ",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image6,
      time: '07:10',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Maitre DJENEBA YAO ",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image7,
      time: '07:00',
      UnreadMessage: true,
      NumberUnreadMessage: '1',
    ),
    MessageModel(
      name: "Maitre ADJOUA KOUADIO ",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image4,
      time: '07:00',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Maitre Adama Kamara ",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image3,
      time: '06:15',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Maitre AFFOUE SIAKA ",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image5,
      time: '06:14',
      UnreadMessage: false,
      NumberUnreadMessage: '0',
    ),
    MessageModel(
      name: "Maitre KOFFI YAYA",
      CurrentMessage: 'The big boondoggles to finance',
      photo: Config.asset.image1,
      time: '05:13',
      UnreadMessage: true,
      NumberUnreadMessage: '5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (Context, index) => UserMessageUi(
          messageModel: messages[index],
        ),
      ),
    );
  }
}
