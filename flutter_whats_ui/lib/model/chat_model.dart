class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(
      {required this.name,
      required this.msg,
      required this.time,
      required this.pic});
}

List<ChatModel> chatsData = [
  new ChatModel(
      name: 'Stanly',
      msg: 'welcome to tutor joes',
      time: '10:15',
      pic: 'https://randomuser.me/api/portraits/men/0.jpg'),
  new ChatModel(
      name: 'Raja',
      msg: 'welcome to tutor joes',
      time: '11:00',
      pic: 'https://randomuser.me/api/portraits/men/1.jpg'),
  new ChatModel(
      name: 'Ratha',
      msg: 'welcome to tutor joes',
      time: '09:20',
      pic: 'https://randomuser.me/api/portraits/men/2.jpg'),
  new ChatModel(
      name: 'Varun',
      msg: 'welcome to tutor joes',
      time: '12:10',
      pic: 'https://randomuser.me/api/portraits/men/3.jpg'),
  new ChatModel(
      name: 'Karthick',
      msg: 'welcome to tutor joes',
      time: '01:20',
      pic: 'https://randomuser.me/api/portraits/men/4.jpg'),
  new ChatModel(
      name: 'Maran',
      msg: 'welcome to tutor joes',
      time: '03.30',
      pic: 'https://randomuser.me/api/portraits/men/5.jpg'),
];
