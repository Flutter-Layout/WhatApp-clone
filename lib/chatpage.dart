import 'package:flutter/material.dart';
import 'package:v/chat.dart';
import 'package:v/dummy.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage1(
                    dummyData[index].name,
                    dummyData[index].profilepic,
                  ),
                ));
          },
          child: Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey,
                  foregroundColor: Color(0XFF075E54),
                  backgroundImage: NetworkImage(
                    dummyData[index].profilepic,
                  ),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[index].time,
                      style: TextStyle(fontSize: 14.0),
                    ),
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
          ),
        );
      },
    );
  }
}
