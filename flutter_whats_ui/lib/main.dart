import 'package:flutter/material.dart';
import 'package:flutter_whats_ui/Tabs/camera.dart';
import 'package:flutter_whats_ui/Tabs/chats.dart';
import 'package:flutter_whats_ui/Tabs/status.dart';
import 'package:flutter_whats_ui/Tabs/call.dart';

void main() => runApp(MaterialApp(
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              style: IconButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              icon: Icon(Icons.search)),
          IconButton(
              style: IconButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            ),
          ],
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          controller: _tabController,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: new TabBarView(
        children: [new Camera(), new Chats(), new Status(), new Call()],
        controller: _tabController,
      ),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.camera,
                color: Colors.white,
              ),
              foregroundColor: Colors.green,
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                foregroundColor:  Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          foregroundColor: Colors.white,
                          child: Icon(Icons.edit),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.camera_alt),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.call),
                    ),
    );
  }
}
