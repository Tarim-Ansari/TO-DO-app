import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_app/home_page.dart';

void main() async{

  await Hive.initFlutter();

  // ignore: unused_local_variable
  var box = await Hive.openBox("mybox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}