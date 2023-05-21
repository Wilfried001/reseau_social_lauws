class MessageModel {
  late String name;
  late String time;
  late String photo;
  late String CurrentMessage;
  late bool UnreadMessage;
  late String NumberUnreadMessage;
  MessageModel(
      {required this.name,
      required this.photo,
      required this.CurrentMessage,
      required this.time,
      required this.UnreadMessage,
      required this.NumberUnreadMessage});
}
