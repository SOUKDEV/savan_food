// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 200),
              child: Text(
                'ເຂົ້າສູ່ລະບົບ',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'ອີເມວ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                  labelText: 'ລະຫັດຜ່ານ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minWidth: 350,
                height: 50,
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Text(
                  'ເຂົ້າສູ່ລະບົບ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'ຫຼື',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 50,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mail,
                        size: 50,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.face,
                        size: 50,
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ທ່ານຍັງບໍ່ມີບັນຊີເເມ່ນບໍ່?'),
                  MaterialButton(
                    textColor: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Text('ສ້າງບັນຊີ'),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
