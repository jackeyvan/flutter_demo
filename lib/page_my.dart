import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  final _tabs = [
    const Tab(
      text: "钱包",
    ),
    const Tab(
      text: "存钱",
    ),
    const Tab(
      text: "取钱",
    ),
  ];

  var _tabsView = List<Widget>.empty(growable: true);

  _buildTabView(String content) {
    return Center(
      child: Text(content),
    );
  }

  @override
  void initState() {
    _controller = TabController(length: _tabs.length, vsync: this);
    _tabsView = [
      _buildTabView("钱包页面"),
      _buildTabView("存钱页面"),
      _buildTabView("取钱页面"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: _tabsView,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
