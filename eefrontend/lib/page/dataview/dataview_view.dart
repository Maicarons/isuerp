import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dataview_logic.dart';

class DataviewPage extends StatelessWidget {
  const DataviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(DataviewLogic());
    final state = Get.find<DataviewLogic>().state;

    return Container(
      child: GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.symmetric(vertical: 0),
        children: [
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data')
        ],
      ),
    );
  }
}
