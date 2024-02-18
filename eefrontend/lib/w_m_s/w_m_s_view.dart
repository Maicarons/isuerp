import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'w_m_s_logic.dart';

class WMSPage extends StatelessWidget {
  const WMSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(WMSLogic());
    final state = Get.find<WMSLogic>().state;

    return Container();
  }
}
