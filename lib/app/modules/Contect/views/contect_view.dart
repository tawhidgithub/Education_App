import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contect_controller.dart';

class ContectView extends GetView<ContectController> {
  const ContectView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContectView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContectView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
