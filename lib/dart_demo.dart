
void main() {
  // 数据类型

  // 字符串
  // String str = "我是好人";
  // print(str);

  // 数值类型
  // int num = 123;
  // print(num);

  // 布尔类型
  // bool flag = true;
  //
  // if (flag) {
  //   print(true);
  // }else{
  //   print(false);
  // }

  // var arr = ["张三",18];
  // arr.add("李四");
  // arr.add(20);
  // print(arr);


  // var list = [
  //   const User(name: "张三",age: 18),
  //   const User(name: "李四",age: 20),
  // ];

  // list.forEach((element) {
  //   print(element.name);
  // });

  // var map = {
  //   "user1" :const User(name: "张三",age: 18),
  //   "user2": const User(name: "李四",age: 20),
  // };
  //
  //
  // map.forEach((key, value) {
  //   print("$key --- " + value.name);
  // });

}

class User {
  const User({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;
}
