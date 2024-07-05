# Flutter Learn

Flutter学习笔记记录。以为常用Flutter工具库记录。

## Dart基础

这是Dart常用的基础。




## 图片加载

### 官方API

````
Image.network(image_url)
````


### 三方API：cached_network_image

#### 直接使用组件加载
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

#### 使用方法加载

````
CachedNetworkIma`ge(
imageUrl: "http://via.placeholder.com/350x150",
placeholder: (context, url) => CircularProgressIndicator(),
errorWidget: (context, url, error) => Icon(Icons.error),
),

Image(image: CachedNetworkImageProvider(url))
````








