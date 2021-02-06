import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String name;
  String pname;
  Profile(this.name, this.pname);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Contact info",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Center(
                child: Container(
                  height: 220,
                  width: 220,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.pname),
                  ),
                ),
              ),
              Text(
                widget.name,
              ),
            ],
          ),
          Divider(
            height: 7,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Mute notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 170,
                ),
                Switch(
                  activeColor: Colors.lightBlue,
                  value: isSwitch,
                  onChanged: (val) {
                    setState(() {
                      isSwitch = val;
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            height: 7,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(9),
            child: Text(
              "Custom notifications",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Divider(
            height: 7,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(9),
            child: Text(
              "Media Visibility",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          // Divider(
          //   height: 7,
          // ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),

          Container(
            padding: EdgeInsets.all(9),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Disappearing messages",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "off",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.av_timer_outlined,
                  color: Color.fromRGBO(7, 94, 84, 2),
                ),
              ],
            ),
          ),
          Divider(
            height: 7,
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Encryption",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "Message and calls are end-to-end\nencrypted.Tap to verify.",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                SizedBox(
                  width: 82,
                ),
                Icon(
                  Icons.lock,
                  color: Color.fromRGBO(7, 94, 84, 2),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 11,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            child: Row(
              children: [
                Icon(
                  Icons.block,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  "Block",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          // Divider(
          //   height: 10,
          // ),
          Container(
            color: Colors.grey[300],
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  "Delete Group",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
