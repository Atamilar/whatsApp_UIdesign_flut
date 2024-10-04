import 'package:flutter/material.dart';
import 'package:flutter_whats_ui/model/call_model.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Calldata.length,
      itemBuilder: (context, i) => new Column(
        children: [
          Divider(
            height: 0.2,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(Calldata[i].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Calldata[i].name,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  new Icon(
                    i % 2 == 0 ? Icons.call : Icons.video_call,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
              subtitle: Text(
                Calldata[i].time,
                style: TextStyle(fontSize: 13.0, color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
