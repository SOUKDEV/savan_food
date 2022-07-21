// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('ສະຖານະການລໍຖ້າ'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 100,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    '20 ນາທີ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'ລໍຖ້າ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 250,
            child: Image.asset("asset/image/staus.png"),
          )
        ],
      ),
    ));
  }
}
