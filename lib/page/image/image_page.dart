import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ImageState();
}

class ImageState extends State<ImagePage> {
  final url = "https://static-cse.canva.cn/blob/239388/e1604019539295.jpg";

  CachedNetworkImageProvider? provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片加载"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  provider = CachedNetworkImageProvider(url);
                });
              },
              child: const Text("加载图片")),
          SizedBox(
            width: 300,
            height: 300,
            child: buildImage(provider),
          ),
        ],
      ),
    );
  }

  buildImage(CachedNetworkImageProvider? provider) {
    if (provider != null) {
      return Image(image: provider);
    }
    return const Placeholder();
  }
}
