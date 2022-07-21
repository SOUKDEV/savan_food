// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('ລາຍລະອຽດການສັ່ງ')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          menu(),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 150),
            child: MaterialButton(
              minWidth: 100,
              onPressed: () {},
              child: Row(
                children: [
                  Text('ຈ່າຍເງີນຜ່ານ VISA'),
                  Image.asset(
                    "asset/image/visa.png",
                    width: 50,
                  )
                ],
              ),
            ),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            textColor: Colors.white,
            minWidth: 250,
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "/status");
            },
            child: Text(
              'ສັ່ງຊື້',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      )),
    ));
  }
}

Container menu() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    width: 500,
    height: 200,
    child: ListTile(
      title: ClipRRect(
        child: Image.asset(
          "asset/image/f1.jpg",
          width: 200,
          height: 200,
        ),
      ),
      subtitle: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'ລາຄາ 20,000 ກີບ',
            style: TextStyle(fontSize: 20),
          ),
          Text('ຈຳນວນ 01 ກອ່ງ', style: TextStyle(fontSize: 20)),
          Text('ລາຄາລວມ 20,000 ກີບ', style: TextStyle(fontSize: 20)),
        ],
      ),
    ),
  );
}
