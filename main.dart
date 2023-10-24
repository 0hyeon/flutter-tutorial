void sayHello(String name) {
  //no return
  print("Hello ${name} nice to meet you!");
}

/*named arugument : 순서오 관계없이 인자 입력가능*/
String sayHello2(
    {String potato = 'anon', int age = 99, String country = 'wakanda'}) {
  return ("Hello ${potato} nice to meet you! ${age},${country}");
}

String sayHello4(
    //호출시 인자가 없으면 빨간불
    {required String potato,
    required int age,
    required String country}) {
  return ("Hello ${potato} nice to meet you! ${age},${country}");
}

String sayHello3(String potato) => "Hello ${potato} nice to meet you!";

num plus(num a, num b) => a + b;
void main() {
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
}
// 실행 명령어dart run main.dart
//cascade operator때문에 세미콜론을 꼭써줘야
//반드시 main에서 실행해야
