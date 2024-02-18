import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isu/page/dataview/dataview_view.dart';
import 'package:isu/page/mainpage/mainpage_view.dart';
import 'package:isu/page/o_m_s/o_m_s_view.dart';
import 'package:isu/page/user/user_view.dart';
import 'package:isu/secret.dart';

class ISUApp extends StatelessWidget {
  const ISUApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'isu',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Microsoft YaHei',
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade700),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '欢迎回来'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            shape: const RoundedRectangleBorder(),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "交易",
                  icon: Icon(Icons.credit_card_outlined),
                ),
                Tab(
                  text: "库存",
                  icon: Icon(Icons.store_outlined),
                ),
                Tab(
                  text: "数据",
                  icon: Icon(Icons.data_exploration_outlined),
                ),
                Tab(
                  text: "我的",
                  icon: Icon(Icons.person_outline),
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                tooltip: "条码",
                icon: const Icon(Icons.barcode_reader),
              ),
              IconButton(
                onPressed: () {},
                tooltip: "二维码",
                icon: const Icon(Icons.qr_code_scanner),
              ),
              IconButton(
                onPressed: () {
                  _alertDialog(context);
                },
                tooltip: "关于",
                icon: const Icon(Icons.info_outline),
              )
            ],
            elevation: 5,
            shadowColor: Colors.grey.shade100,
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: const TabBarView(children: [
            OMSPage(),
            MainpagePage(),
            DataviewPage(),
            UserPage()
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: PopupMenuButton(
              icon: const Icon(Icons.add),
              tooltip: 'Add...',
              itemBuilder: (context) {
                return const <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: '订单',
                    child: Text('订单'),
                  ),
                  PopupMenuItem<String>(
                    value: '商品类目',
                    child: Text('商品类目'),
                  ),
                  PopupMenuItem<String>(
                    value: '出入库',
                    child: Text('出入库'),
                  ),
                  PopupMenuItem<String>(
                    value: 'tag',
                    child: Text('tag'),
                  ),
                  PopupMenuItem<String>(
                    value: '资金变动',
                    child: Text('资金变动'),
                  ),
                ];
              },
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

_alertDialog(ctx) async {
  String systemVersion = Platform.operatingSystemVersion;
  var result = await showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          title: const Text('关于'),
          content: Text('''
易速智店 项目
研发：Maicarons
发布平台：Atomgit
内部版本：DebugSRC
系统兼容性：$systemVersion 已支持
感谢您的使用！'''),
          actions: <Widget>[
            TextButton(
                child: const Text(
                  '神秘窗口',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Secret()),
                  );
                }),
            TextButton(
              child: const Text(
                '确定',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(context, "确定");
              },
            ),
          ],
        );
      });
}
