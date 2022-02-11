import 'package:flutter/material.dart';
import 'package:flutter_demo/page_setting.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("我是首面"),
          SizedBox(
            height: 20,
          ),
          TextButton(
              child: Text("进入设置"),
              onPressed: () {

                Navigator.pushNamed(context, ROUTE_SETTINGS,arguments: "设置页面");

                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return SettingPage(title: "我是设置页面");
                // }));
              })
        ],
      ),
    );
  }
}
