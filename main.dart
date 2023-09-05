void main(){
  //var 변수는 따로 타입을 지정하지 않아도 들어가는 데이터 값에 따라 dart 컴파일러가 알아서 한다.
  var name; 
  //dynamic은 여러가지 타입을 가질 수 잇는 변수에 쓰는 키워드다.
  //만약 변수를 선언할 때 아무런 값을 지정하지 않거나, 타입을 선언하지 않으면 자동적으로 dynamic 타입을 가진다.
  //dynamic 타입은 언제 사용될까?
  //대표적으로 타입을 알기가 힘들 때 사용한다. 예를 들어 json을 작업할 때 같은 경우다.
  dynamic las;
  //null safety란 어떤 변수, 혹은 데이터가 null이 될 수 있음을 명시한다.
  //String뒤에 ?를 붙여줌으로서 name이 String 또는 null이 될 수 있다고 명시해준 것입니다.
  //기본적으로 모든 변수는 non-nullable(null이 될 수 없음)이다.
  String? nico = 'nico';
  nico = null;
  // if(nico != null){
  //   nico.isNotEmpty;
  // }
  nico?.isNotEmpty;//이 값이 존재하는지 확인하고 이 후의 연산을 진행
  //final을 변수 이름 앞에 붙이면 그 변수는 수정을 할 수 없게 된다.
  //final은 런타임 중에 데이터를 입력 받을 수 있지만 const는 안된다.
  final age = 12;
  // 초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
  // flutter로 data fecthing을 할 때 유용하다.
  // late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.
  late final String a;
  //compile-time constant
  //API 요청을 할 때 사용하는 것은 compile-time constant가 아니다., 사용자가 입력하는 값도 const가 아니다.
  //앱스토어에 올리기 전에 알고 있는 값
  const b = 'nico';


  //데이터 자료형
  String name = 'nico';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  //num은 integer과 double의 부모 class이다.
  num x = 12;
  x = 1.1;

  //list
  var giveMeFive = true;
  var numbers = [1, 2, 3, 4, if(giveMeFive) 5,]; // giveMeFive가 true면 5값을 가짐.
  // or List<int> numbers = [1, 2, 3, 4]

  //string interpolation은 text에 변수를 추가하는 방법, text를 추가한다면 $ 뒤에 변수명, 연산을 하고 싶다면 ${}
  var name = 'nico';
  var age = 10;
  var greeting = 'Hello everyone, my name is $name and I am ${age + 2}';
  print(greeting);

  //collection for
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for(var friend in oldFriends) "💖 $friend",
  ];

  //maps
  var player = {
    'name':'nico',
    'superpower': false,
    'xp': 19.99,
  };
  Map<int, bool> player = {
    1: false,
    2: false,
    3: true,
  };
  Map<List<int>, bool> player = {
    [1, 2, 3, 5] : true,
  };
  List<Map<String, Object>> players = [
    {'name': 'nico', 'xp': 199993.999},
    {'name': 'nico', 'xp': 199993.989},
  ];

  //set
  //set과 list의 차이라면 set의 속한 모든 아이템은 유니크하다.
  //numbers에 1을 여러번 추가해도 1은 하나이다.
  var numbers = {1, 2, 3, 4};
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  print(numbers); // 실행 결과는 [1, 2, 3, 4]
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(1);
  numbers.add(1);
  print(numbers); // 실행 결과는 [1, 2, 3, 4, 1, 1]

}

//funtion
//void는 값을 return 하지 않고 출력. 만약 return 하고 싶다면 void 대신 return할 값인 String
void sayHello(String name){
  print("Hello $name nice to meet you");
}
//sayHello는 하나의 파라미터를 리턴하는 함수이다.
String sayHello(String name){
  return "Hello $name nice to meet you";
}
//코드가 한 줄 짜리면 이렇게 작성해도 된다.
String sayHello(String name) => "Hello $name nice to meet you";
num plus(num a, num b) => a + b;

//named parameter
//{}를 추가, 만약 유저가 이 형식대로 데이터 값을 입력 안 할 경우 null이 발생할 수 있으므로 default value기본 데이터 값을 정의한다.
//만약 유저가 아무런 값 없이 그냥 함수를 호출 했는데 default value를 지정하기 싫다면, 데이터 타입 앞에 required로 지정해준다.
String sayHello({String name = 'anon', int age = 19, String country = 'wakanda'}){
  return "Hello $name, you are $age, and you come from $country";
}
//void main(){
//  print(sayHello(
//  age: 12,
//  country: 'cuba',
//  name: 'nico',
// ));
//}


//optional positional parameter
String sayHello(String name, int age, String country) => '$name, $age, $country';
