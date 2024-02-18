import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mainpage_logic.dart';

class MainpagePage extends StatelessWidget {
  const MainpagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MainpageLogic());

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        color: Theme.of(context).colorScheme.primary,
        child: Text(
          '相关功能正在开发中',
          // TRY THIS: Change the Text value
          //           or change the Theme.of(context).textTheme
          //           to "displayLarge" or "displaySmall".
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
    );
  }
}
