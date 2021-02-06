import 'package:flutter/material.dart';
import 'package:v/call.dart';
import 'package:v/chatpage.dart';
import 'package:v/image.dart';
import 'package:v/status.dart';
void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFF075E54),
        accentColor: Color(0XFF25D366),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(7, 94, 84, 2),
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
            title: Text('WhatApp'),
            actions: [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
              ),
              Icon(Icons.more_vert),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              Photo(),
              Chat(),
              Status(),
              Chatcall(),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     print("WhatApp Chat");
          //   },
          //   backgroundColor: Color(0XFF25D366),
          //   child: Icon(
          //     Icons.message,
          //     color: Colors.white,
          //   ),
          // ),
        ),
      ),
    );
  }
}
