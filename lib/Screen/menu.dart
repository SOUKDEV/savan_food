// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Icon(Icons.restaurant),
            SizedBox(
              width: 10,
            ),
            Text('ຮ້ານ ອາຫານສະບາຍດີ')
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
        ],
      )),
    ));
  }

  Container menu() {
    return Container(
      width: 500,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            "asset/image/f1.jpg",
          ),
        ),
        title: Text('ສະປາເກັດຕີ້'),
        subtitle: Text('ລາຄາ 20,000 ກີບ'),
        trailing: MaterialButton(
            color: Colors.orange.shade400,
            onPressed: () {
              Navigator.pushNamed(context, "/order");
            },
            child: Text('ສັ່ງ')),
      ),
    );
  }
}
