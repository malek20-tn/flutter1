import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 110),
          IconButton(
            icon: Icon(Icons.ondemand_video_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 110),
          IconButton(
            icon: Icon(Icons.group_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 110),
          IconButton(
            icon: Icon(Icons.storefront_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 110),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          SizedBox(width: 110),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
