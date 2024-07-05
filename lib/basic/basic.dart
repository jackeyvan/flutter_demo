void printMap() {
  Map<String, int> ages = {"xiaoming": 18, "xiaohong": 16, "xiaozhang": 30};

  print(ages);

  Map<String, int> groths = ages.map((name, age) {
    // print("name:$name age:$age");
    return MapEntry(name, age + 2);
  });

  print(groths);
}

void printNum() {
  num total = 10;
  int a = 1;
  double b = 2.2;

  print("total:$total a:$a b$b");
}

void printStr() {
  String str1 = "abc";
  String str2 = "def";

  String result = "拼接之后结果：$str1$str2";
  print(result);
}

void printBool() {
  bool success = true;
  bool fail = false;

  print(success);
  print(fail);
  print(success && fail);
  print(fail || success);
}

void printList() {
  List list1 = [1, 2, "str", 3, true, false];
  List<String> list2 = ["str1", "str2", "str3"];

  List list3 = List.generate(10, (index) => index + 1);

  print(list1);
  print(list2);
  print(list3);

  for (var e in list3) {
    print(e);
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return "Name:$name,  age:$age";
  }
}

void main() {
  // printNum();
  // printStr();
  // printBool();
  // printList();
  // printMap();

  Person p = Person("zhangsan", 18);
  print(p.toString());
}
