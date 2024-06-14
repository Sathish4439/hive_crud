import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_db/Models/Studentmodal.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<studentModal>> StudentListNotifier = ValueNotifier([]);

Future<void> addstudent(studentModal value) async {
  final studentDB = await Hive.openBox<studentModal>('student_db');
  final _id = await studentDB.add(value);
  value.id = _id;

  StudentListNotifier.value.add(value);
  StudentListNotifier.notifyListeners();
}

Future<void> GetAllStudentDetails() async {
  final studentDB = await Hive.openBox<studentModal>('student_db');
  StudentListNotifier.value.clear();

  StudentListNotifier.value.addAll(studentDB.values);
  StudentListNotifier.notifyListeners();
}

Future<void> Deletedata(int id) async {
  final studentDB = await Hive.openBox<studentModal>('student_db');
  await studentDB.delete(id);
  GetAllStudentDetails();
}
