import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //색변경
        ),
        title: const Text('내 계정',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
