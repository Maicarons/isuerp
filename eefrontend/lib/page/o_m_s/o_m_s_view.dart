import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'o_m_s_logic.dart';

class OMSPage extends StatelessWidget {
  const OMSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(OMSLogic());
    final state = Get.find<OMSLogic>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('OMS 订单交易系统'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
      ])),
    );
  }
}
