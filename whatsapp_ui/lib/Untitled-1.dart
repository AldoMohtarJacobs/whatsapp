import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tampilan Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var icons;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("Tampilan Home "),
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
                child: Text(
              "STATUS",
            )),
            Tab(
                child: Text(
              "CALLS",
            )),
          ],
          indicatorColor: Colors.white,
        ),
      ),
    );
  }
}
