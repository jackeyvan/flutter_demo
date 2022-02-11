import 'package:flutter/material.dart';

/// 有状态组件，接收参数

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingPageState();
  }
}

class SettingPageState extends State<SettingPage> {
  late String _content;

  @override
  Widget build(BuildContext context) {
    // 可以直接获取传递的参数
    var arg = ModalRoute.of(context)?.settings.arguments;
    _content = arg != null ? (arg as String) : "";

    return Scaffold(
      appBar: AppBar(


        title: Text("设置"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_content),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              child: Text("返回"),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      )),
    );
  }
}
