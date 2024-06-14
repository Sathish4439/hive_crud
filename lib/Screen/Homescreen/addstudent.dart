import 'package:flutter/material.dart';
import 'package:hive_db/DB/dbfunctions.dart';
import 'package:hive_db/Models/Studentmodal.dart';

class AddstudentWidget extends StatefulWidget {
  const AddstudentWidget({super.key});

  @override
  State<AddstudentWidget> createState() => _AddstudentWidgetState();
}

class _AddstudentWidgetState extends State<AddstudentWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
              labelText: 'Age',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                AddstudentButtonClicked();
              },
              child: Text("Add Student"))
        ],
      ),
    );
  }

  void AddstudentButtonClicked() {
    final _name = nameController.text.trim();

    final _age = ageController.text.trim();

    if (_age.isEmpty || _name.isEmpty) {
      return;
    }
    print("$_name $_age");

    final student = studentModal(Name: _name, Age: _age);

    addstudent(student);
  }
}
