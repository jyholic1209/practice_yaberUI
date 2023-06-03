import 'package:flutter/material.dart';

class NoticeDetailPage extends StatelessWidget {
  const NoticeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //색변경
        ),
        title: const Text('새로운 기능이 추가되었습니다.',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
