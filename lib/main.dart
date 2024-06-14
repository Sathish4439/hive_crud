import 'package:flutter/material.dart';

import 'package:hive_db/Models/Studentmodal.dart';
import 'package:hive_db/Screen/Homescreen/Home.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  if (!Hive.isAdapterRegistered(studentModalAdapter().typeId)) {
    Hive.registerAdapter(studentModalAdapter());
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
