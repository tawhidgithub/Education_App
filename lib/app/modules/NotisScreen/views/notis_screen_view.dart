import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notis_screen_controller.dart';

class NotisScreenView extends GetView<NotisScreenController> {
  const NotisScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotisScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NotisScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
