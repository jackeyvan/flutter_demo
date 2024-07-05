# Flutter Learn

Flutter学习笔记记录。以为常用Flutter工具库记录。

## Dart基础

这是Dart常用的基础。

## 图片加载

### 官方API

````
#方法一 ：直接加载url
Image.network(image_url)

#方法二：提供provider
Image(image:provider)
````

### 三方API：[cached_network_image](https://pub.dev/packages/cached_network_image)

三方图片加载框架，具备缓存功能。

#### 使用组件加载

````
CachedNetworkImage(
  imageUrl: "http://via.placeholder.com/200x150",
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
    ),
  ),
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
),
````

#### 使用Provider加载

````
Image(image: CachedNetworkImageProvider(url))
````








