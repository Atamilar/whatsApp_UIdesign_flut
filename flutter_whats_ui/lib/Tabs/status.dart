import 'package:flutter/material.dart';
import 'package:flutter_whats_ui/model/status_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/10.jpg',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tab to add Status Update',
                  style: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              'Recent updates',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusdata.length,
            itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 0.2,
                ),
                new ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusdata[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        statusdata[i].name,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    child: Text(
                      statusdata[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
