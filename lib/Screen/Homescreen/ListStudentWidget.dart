import 'package:flutter/material.dart';
import 'package:hive_db/DB/dbfunctions.dart';
import 'package:hive_db/Models/Studentmodal.dart';

class ListStudentWidget extends StatefulWidget {
  const ListStudentWidget({super.key});

  @override
  State<ListStudentWidget> createState() => _ListStudentWidgetState();
}

class _ListStudentWidgetState extends State<ListStudentWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: StudentListNotifier,
      builder: (BuildContext context, List<studentModal> StudentList,
          Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            shrinkWrap: true, // Add this to make ListView work inside a Column
            itemBuilder: (context, index) {
              final data = StudentList[index];
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  title: Text(data.Name),
                  subtitle: Text(data.Age),
                  trailing: IconButton(
                      onPressed: () {
                        if (data.id != null)
                         Deletedata(data.id!);
                        else {
                          print("unalbe to delete");
                        }
                      },
                      icon: Icon(Icons.delete_outline)),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: StudentList.length,
          ),
        );
      },
    );
  }
}
