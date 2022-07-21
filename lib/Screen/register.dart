// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool value = true;
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 145),
              child: Text(
                'ສະໜັກສະມາຊິກ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'ຊື່',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'ນາມຊະກຸນ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'ອີເມວ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                  labelText: 'ລະຫັດຜ່ານ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'ຢືນຢັນລະຫັດຜ່ານ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.blue,
                    value: this.valuefirst,
                    onChanged: (value) {
                      setState(() {
                        this.valuefirst = value!;
                      });
                    },
                  ),
                  Text('ທ່ານໄດ້ອ່ານລາຍລະອຽດ'),
                  Text('ຍິນຍອມສ້າງບັນຊີຜູ້ໃຊ້ເເລ້ວຫຼືບໍ່ ?')
                ],
              ),
            ),
            Container(
              child: MaterialButton(
                elevation: 10,
                minWidth: 300,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {},
                child: Text('ສ້າງບັນຊີ'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ທ່ານມີບັນຊີເເລ້ວ?',
                    style: TextStyle(fontSize: 15),
                  ),
                  MaterialButton(
                    textColor: Colors.blue,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child:
                        Text('ເຂົ້າສູ່ລະບົບ', style: TextStyle(fontSize: 15)),
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
