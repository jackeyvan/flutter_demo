import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final mUrl =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iplaysoft.com%2Ffree-images.html&psig=AOvVaw3v6ayHQwSb3Kg8CmG_Why7&ust=1644586221492000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNi_hp6f9fUCFQAAAAAdAAAAABAJ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片加载"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.network(mUrl),
        ),
      ),
    );
  }
}
