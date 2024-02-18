import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_logic.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(UserLogic());
    final state = Get.find<UserLogic>().state;

    return Scaffold(
        appBar: AppBar(
          title: const Text('User 用户'),
        ),
        body: userListView());
  }
}

Widget userListView() {
  double changdu;
  Platform.isMacOS || Platform.isWindows || Platform.isLinux
      ? changdu = 30
      : changdu = 5;
  return ListView(
    padding: const EdgeInsets.only(left: 20, right: 20),
    scrollDirection: Axis.vertical,
    children: [
      Divider(
        color: Colors.grey.shade500,
        height: 30,
      ),
      ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.supervised_user_circle),
            radius: 30,
          ),
          title: Text('临时测试用户'),
          subtitle: Text('V1'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))),
      Divider(
        color: Colors.grey.shade500,
        height: 20,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.payment,
            size: 30,
          ),
          title: Text('交易系统设置'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.store_outlined,
            size: 30,
          ),
          title: Text('库存系统设置'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.sync,
            size: 30,
          ),
          title: Text('同步设置'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.wifi,
            size: 30,
          ),
          title: Text('网络设置'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.color_lens_outlined,
            size: 30,
          ),
          title: Text('界面设置'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
      MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(
            Icons.info_outline,
            size: 30,
          ),
          title: Text('关于'),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: changdu,
      ),
    ],
  );
}
