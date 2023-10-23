void main() {
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
}
// 실행 명령어dart run main.dart
//cascade operator때문에 세미콜론을 꼭써줘야
//반드시 main에서 실행해야
