import 'package:flutter/material.dart';
import 'package:flutter_whats_ui/model/chat_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                new Divider(
                  height: 0.2,
                ),
                new ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatsData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        chatsData[i].name,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        chatsData[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    chatsData[i].msg,
                    style: TextStyle(color: Colors.grey, fontSize: 13.0),
                  ),
                ),
              ],
            ));
  }
}
