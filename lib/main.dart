import 'package:flutter/material.dart';
import 'package:flutter_yaber/binding/init_bindings.dart';
import 'package:flutter_yaber/pages/login.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: InitBinding(),
      home: Login(),
    );
  }
}
