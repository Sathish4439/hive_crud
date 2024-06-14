import 'package:hive_flutter/hive_flutter.dart';

part 'Studentmodal.g.dart';

@HiveType(typeId: 1)
class studentModal {
   @HiveField(0)
   int? id;

  @HiveField(1)
  final String Name;

  @HiveField(2)
  final String Age;

  studentModal({required this.Name, required this.Age,this.id });
}
