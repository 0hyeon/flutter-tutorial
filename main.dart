/*Typedef*/
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  //함수를거꾸로
  return reversed.toList();
}

/*Typedef2*/
typedef UserInfo = Map<String, String>; //
String sayHI(UserInfo userInfo) {
  //(타입 변수)
  return "hHi ${userInfo['name']}";
}

String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

/*QQ operator*/
String capitalizeNameQQ(String? name) =>
    name?.toUpperCase() ?? 'ANON'; //null아아니면 Anon

void sayHello(String name) {
  //no return
  print("Hello ${name} nice to meet you!");
}

/*named arugument*/
String sayHello2(
    {String potato = 'anon', int age = 99, String country = 'wakanda'}) {
  return ("Hello ${potato} nice to meet you! ${age},${country}");
}

String sayHello4(
    //호출시 인자가 없으면 error
    {required String potato,
    required int age,
    required String country}) {
  return ("Hello ${potato} nice to meet you! ${age},${country}");
}

String sayHello3(String potato) => "Hello ${potato} nice to meet you!";

/*optional positional parameters */
String sayHello5(String name, int age, [String? country = 'cuba']) =>
    "Hello ${name} nice to meet you!";

num plus(num a, num b) => a + b;
void main() {
  print(reverseListOfNumbers([3, 6, 10]));
  sayHI({"name": '0hyeon'});

  print(sayHello5('0hyeon', 13));
  print(sayHello2(
    age: 30,
    country: 'gasansi',
    potato: '0hyeon',
  ));
  print(sayHello3('0hyeon'));
  print(plus(99, 1));

  var name = '0hyeon'; //변수생성
  String name1 = '0hyeon'; //명시적생성
  name = '1hyeon';
  //변수변경은 같은타입으로
  print('hello world');
  var dynamicName;
  dynamicName = '0hyeon';
  dynamicName = 12;
  dynamicName = true;
  dynamic dynamicName2; //이상적으로는 피해야
  dynamicName2 = '1hyeon';
  dynamicName2 = 12;
  dynamicName2 = true;

  //null safety : 개발자가 null값을 참조할수없도록 런타임에러
  String? stringVar = '0hyeon';
  //이런식으로 (?) null사용
  stringVar = null;

  final name2 = '0hyeon'; //const
  // name2 = '2hyeon';//error

  // late는 final이나 var앞에 붙일수있음 초기 데이터없이 변수를 선언하룻있게
  late final String apiAddress;
  // print(apiAddress); //The late local variable 'apiAddress' is definitely unassigned at this point.
  // 뭔가를 넣기전에는 호출 못함 에러

  // const vs final
  // 앱스토어에 올리기전 값을 알고있다면 const , api를 통해 값을 불러와야 하다면final

  /*Collection If*/
  var gibeMeFive = true;
  var number = [1, 2, 3, 4, if (gibeMeFive) 5];
  print(number);
  var name3 = '0hyeon';
  var age = 10;
  var greeting =
      'Hello everyone, my name is $name3, nice to meet you! I\'m ${age + 2}';
  print(greeting);

  /*Collection For*/
  var oldFriends = ['0hyeon', 'jaehoon'];
  var newFriends = [
    'eunsol',
    'nagyoung',
    for (var friend in oldFriends) "$friend"
  ];
  print(newFriends);

  /*Map*/
  var players = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  Map<int, bool> players2 = {1: true, 2: false, 3: true};
  List<Map<String, Object>> players3 = [
    {'name': 'nico', 'xp': 1999993.999},
  ];
  print(players);
  print(players2);
  print(players3);
  /*Set*/
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
  List<int> numbers2 = [1, 2, 3, 4];
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1);
  print(numbers2);
  var numbers3 = {1, 2, 3, 4};
  numbers3.add(1);
  numbers3.add(1);
  numbers3.add(1);
  numbers3.add(1);
  numbers3.add(1);
  print(numbers3);

  /*Named Constructor Parameters*/
  // var player = Player(name: "0hyeon", xp: 1500, team: 'blue', age: 21);

  var player = Player.createBluePlayer(name: '0hyeon', age: 21);
  player.sayHello();

  // var player2 = Player('2hyeon', 25400);
}
// 실행 명령어dart run main.dart
//cascade operator때문에 세미콜론을 꼭써줘야
//반드시 main에서 실행해야

/*prac class instance */
class Player {
  //클래스를 만들땐 타입을꼭 명시해야

  final String name, team;
  int xp, age;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  /*Construct 위에거보다 짧아짐*/
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});
  /*createBluePlyer : Named형식 reqired */
  Player.createBluePlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  /*createRedPlyer : Positional optional */
  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;
  void sayHello() {
    print("Hi my name is $name");
  }
}
