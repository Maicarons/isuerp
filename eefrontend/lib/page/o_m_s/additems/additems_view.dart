import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'additems_logic.dart';

class AdditemsPage extends StatelessWidget {
  const AdditemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(AdditemsLogic());

    return Scaffold(
      appBar: AppBar(
        title: const Text('添加商品类目'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('A类型'),
        ),
      ),
    );
  }
}
