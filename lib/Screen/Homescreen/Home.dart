import 'package:flutter/material.dart';
import 'package:hive_db/DB/dbfunctions.dart';
import 'package:hive_db/Screen/Homescreen/ListStudentWidget.dart';
import 'addstudent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    GetAllStudentDetails();
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Management'),
      ),
      body: ListView(
        children: [
          AddstudentWidget(),
          ListStudentWidget(),
        ],
      ),
    );
  }
}
