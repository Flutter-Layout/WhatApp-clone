import 'package:flutter/material.dart';
import 'package:v/dummy.dart';

class Chatcall extends StatefulWidget {
  @override
  _ChatcallState createState() => _ChatcallState();
}

class _ChatcallState extends State<Chatcall> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, index) {
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
                foregroundColor: Color(0XFF075E54),
                backgroundImage: NetworkImage(dummyData[index].profilepic),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.call),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  dummyData[index].message,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
