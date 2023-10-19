import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_controllers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final _controller = Get.put(AppControllers()); //เรียก clas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Conter')),
        body: Center(
          // ใช้ Obx เพื่อแสดงค่า count จาก Controller แบบต่อเนื่อง
          child: Obx(() => Text('${_controller.counter}',
              style: const TextStyle(fontSize: 120))),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => _controller.increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
                onPressed: () => _controller.reduce(),
                child: const Icon(Icons.remove))
          ],
        ));
  }
}
