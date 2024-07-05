import 'package:flutter/material.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("我是首面"),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              child: const Text("进入设置"),
              onPressed: () {
                Navigator.pushNamed(context, routeSetting, arguments: "设置页面");
              }),
          TextButton(
              child: const Text("图片页面"),
              onPressed: () {
                Navigator.pushNamed(context, routeImage);
              }),
        ],
      ),
    );
  }
}
