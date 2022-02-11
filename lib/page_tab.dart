import 'package:flutter/material.dart';
import 'package:flutter_demo/page_home.dart';
import 'package:flutter_demo/page_my.dart';
import 'package:flutter_demo/page_search.dart';

class TabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabPageState();
  }
}

class TabPageState extends State<TabPage> {
  int mCurrentIndex = 0;

  final mPages = [HomePage(), SearchPage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("大力播放器"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mCurrentIndex,
        onTap: (index) {
          setState(() {
            mCurrentIndex = index;
          });
        },
        items: [
          _buildBottomItem(Icons.home, "首页"),
          _buildBottomItem(Icons.search, "搜索"),
          _buildBottomItem(Icons.account_circle_sharp, "我的"),
        ],
      ),
      body: mPages[mCurrentIndex],
      drawer: const Drawer(child: Center(child: Text("左边侧边栏"),),),
      endDrawer: const Drawer(child: Center(child: Text("右边侧边栏"),),),

    );
  }

  _buildBottomItem(IconData icon, String label, {double size = 32}) {
    return BottomNavigationBarItem(
        label: label,
        icon: Icon(
          icon,
          size: size,
        ));
  }
}
