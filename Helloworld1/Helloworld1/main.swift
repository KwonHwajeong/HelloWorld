//
//  main.swift
//  Helloworld1
//
//  Created by KHJ on 2019. 2. 28..
//  Copyright © 2019년 KHJ. All rights reserved.
//

import Foundation

print("Hello, World!")

//1. 이름짓기, 콘솔로그, 문자열 보간법
let age: Int = 10

print("안녕하세요! 저는 \(age)살입니다.")

print("안녕하세요! 저는 \(age + 5)살입니다.")

print("\n###########\n")

class person {
  var name: String = "hwajeong"
  var age: Int = 33
}
let hj: person = person()

print(hj)

print("\n###########\n")

dump(hj)



//2. 상수와 변수
//상수선언 : let -> 차후 변경이 불가능한 상수
//let 이름: 타입 = 값

//변수선언 : var -> 차후 변경이 가능한 변수
//var 이름: 타입 = 값

//variable = 변수는 이렇게 차후에 다른 값을 할당할 수 있지만
//constant = 상수는 차후에 값을 변경할 수 없다 - 오류발생

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB

//sum = 1  - 그 이후에는 다시 값을 바꿀수 없음.오류발생

//변수도 물론 차후에 할당하는 것 가능

var nickname: String

nickname = "hj"
print(nickname)
//변수는 차후에 다시 다른 값을 할당해도 문제가 없다
nickname = "화정"
print(nickname)

//3~4. 기본 데이터 타입
//true 와 false만을 값으로 가지는 타입

var someBool: Bool = true
someBool = false

//true 인데 0을 선언하면 에러남
//0 = false, 1 = true

//Int, UInt
//정수타입, 현재는 기본적으로 64비트 정수형

//var someInt: Int = 100.1 Int는 정수이므로 소수점 컴파일 오류발생
//var someUInt: UInt = -100 UInt는 양의 정수타입이므로 컴파일 오류

//float - 실수타입, 32비트 부동소수형
var someFloat: Float = 3.14
someFloat = 3 //정수가 입력되는 경우 자동으로 실수로 변경됨. 3.0

print(someFloat)

//Double - 실수타입, 64비트 부동소수형
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat 타입이 서로 맞지 않아 컴파일 오류

//Character - 문자타입. 유니코드 사용. 큰따옴표("") 사용
var someCharacter: Character = " "
someCharacter = " "
print(someCharacter)
someCharacter = "가"
print(someCharacter)
someCharacter = "A"
print(someCharacter)

//someCharacter = "하하하" 한글자만 허용 됨
print(someCharacter)

//String - 문자열타입. 유니코드 사용. 큰따옴표("")사용
var someString: String = "하하하"
someString = someString + "웃으면 복이와요"
print(someString)

//someString = someCharacter 타입이 안맞아 에러남

//Any swift의 모든 타입을 지칭하는 키워드
var someAny: Any = 100
print(someAny)

someAny = "가나다라마바사"
print(someAny)

someAny = 1.444
print(someAny)

//any 타입에 double 자료를 넣어두덨더라도 Any는 Double타입이 아니기 때문에 할당할 수 없다.
//명시적으로 타입을 변환해 주어야 한다. 타입 변환은 차후에 다룬다.

//let someDouble2: Double = someAny 컴파일 오류

//AnyObject 모든 클래스 타입을 지칭하는 프로토콜(클래스와 프로토콜에 대한 설명은 차후에)

class SomeClass{}

var someAnyObject: AnyObject = SomeClass()

//AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없다
//someAnyObject = 123.12 컴파일오류

//nil 없음을 의미 = null

//someAnyObject = nil 컴파일 오류
//someAny = nil 컴파일 오류

//someany는 any를, someanyobject는 anyobject 타입이기 때문에 nil을 할당할 수 없다.

//5.컬렉션타입
//Array  멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
var integers: Array<Int> = Array<Int>() //빈 Int Array 생성

integers.append(1)
integers.append(100)
//integers.append(100.1) int 타입이 아니므로 array 추가 안됨

//ㅔㅁ버 포함 여부 확인
print(integers.contains(100)) //true
print(integers.contains(99))  //false

//멤버 교체
integers[0] = 99

//멤버 삭제
print(integers.remove(at: 0)) //1
print(integers.removeLast())  //100
print(integers.removeAll())   //()

//멤버 수 확인
print(integers.count)   //0

//인덱스를 벗어나 접근하려면 익셉션 런타임 오류 발생
//integers[0]

//let을 사용하면 Array를 선언하면 불변 Array가 됨
let immutableArray = [1, 2, 3]

//수정이 불가능한 Array이므로 멤버를 추가하거나 삭제할 수 없음
//immutableArray.append(4)
//immutableArray.removeAll()


//Dictionary 키와 값의 쌍으로 이루어진 컬렉션 타입
var anyDictionary: Dictionary = [String: Any]()

anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

//emptyDictionary["Key"] = "value"

//let someValue: String = initalizedDictionary["name"]

//Mark: Set
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99) //같은 값을 여러번 넣어도 한번만 인식함

integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

print(setA)
print(setB)

let union: Set<Int> = setA.union(setB) //합집합
print(union)

let sortedUnion: [Int] = union.sorted() //합집합 오름차순 정렬
print(sortedUnion)

let intersection: Set<Int> = setA.intersection(setB) //교집합
print(intersection)

let subtracting: Set<Int> = setA.subtracting(setB) //차집합
print(subtracting)


//6. 함수
//함수 선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, ...) -> 변환타입 {
//    함수 구현부
//    return 반환값
//  }

func sum(a: Int, b: Int) -> Int {
    return a + b
}

//반환 값이 없는 함수
// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, ...) -> void {
//   함수 구현부
//   return
// }

func printMyName(name: String) -> Void {
    print(name)
}

//furn 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입,...) {
// 함수 구현부
// return
// }

func printYourName(name: String) {
    print(name)
}

//매개변수가 없는 함수
// func 함수이름() -> 반환타입 {
//     함수 구현부
//    return 반환값
// }

func maximumIntegerValue() -> Int {
      return Int.max
}

//매개변수와 반환값이 없는 함수
// func 함수이름() -> void {
//  함수 구현부
//  return
// }

func hello() -> Void {
    print("Hello")
}

func bye() {print("bte")}

//함수 호출
print(sum(a:3, b: 5))

print(printMyName(name: "HJ"))

print(printYourName(name: "you"))

print(maximumIntegerValue())

hello()

bye()

//6.1 함수 고급
//매개변수 기본값
// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤족에 위치하는 것이 좋다
// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값...) -> 반환타입 {
//     함수구현부
//     return 반환값
// }

func greeting(friend: String, me: String = "HJ") {
    print("Hello \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생햑할 수 있다
greeting(friend: "Hana")
greeting(friend: "john", me: "eric")

//전달인자 레이블
//전달인자 레이블은 함수를 호출할 때
// 함수 사용자의 입장에서 표현하고자 할 때 사용
// func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//  함수 구현부
//  return
// }

//함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 떄에는 전달인자 레이블을 사용해야 한다
greeting(to : "Hana", from: "HJ")


//가변 매개변수
//전달 받은 값의 개수를 알기 어려울 때 사용할 수 있다
// 가변 매개변수는 함수당 하나만 가질 수 있다

// func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//   함수구현부
//   return
// }

func sayHelloToFriend(me: String, friends: String...) ->String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriend(me: "HJ", friends: "hana", "eric", "wing"))
print(sayHelloToFriend(me: "HJ"))

//데이터 타입으로서의 함수
//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고 매개변수를 통해 전달도 가능

// 함수의 타입 표현
// 반환타입을 생략할 수 없다
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "HJ")

someFunction = greeting(friend:me:)
someFunction("eric", "HJ")

// 타입이 다른 함수는 할당할 수 없음
//someFunction = sayHelloToFriend(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("Jenny", "mike")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)

//7. 조건문
let someInteger = 100

//if 조건 {
//    조건
// } else if 조건 {
//    실행 구문
// } else {
//    실행 구문
// }

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

// 스위프트 조건에는 항상 Bool타입이 들어와야한다
// someInteger는 Bool타입이 아닌 Int타입이기 때문에 컴파일 오류가 발생한다
// if someInteger {}

//switch
// switch 비교값 {
//   case 패턴:
//      실행 구문
//   default:
//      실행 구문
//}

switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch "yagom" {
case "jake":
    print("jake")
    break //자동으로 되기 때문에 굳이 안써줘도 됨
case "mina":
    print("mina")
    fallthrough //mina 가 맞더라도 yagom 까지 실행함
case "yagom":
    print("yagom!!!")
default: //default 꼭 써주기
    print("unknown")
}

//8. 반복문
var Integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

//for - in

//for item in items {
//  code
// }

for Integers in Integers{
    print(Integers)
}

// DIctionary의 item은 key 와 value로 구성된 튜플 타입이다
for (name, age) in people {
    print("\(name): \(age)")
}

//while
// while 조건 {
//     실행코드
// }

while Integers.count > 1 {
    Integers.removeLast()
}

// repeat-while
repeat {
    Integers.removeLast()
} while Integers.count > 0


// 9.옵셔널 Optional
//값이 있을수도 없을수도 있다
// 옵셔널이 필요한 이유 : nil의 가능성을 명시적으로 표현.
//                  nil 가능성을 문서화 하지 않아도 코드만으로 충분히 표현가능
//                  문서/주석 작성 시간 절약
//                  전달받은 값이 옵셔널이 아니라면 nil 체크를 하지 않더라도 안심하고 사용
//                  효율적인 코딩
//                  예외 상황을 최소화하는 안전한 코딩

//enum + general
//enum Optional<Wrapped> : ExpressibleByNilLiteral {
//    case none
//    case some(Wrapped)
//}

//let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil

// ! : 암시적 추출 옵셔널
// var optionalValue: Int! = 100
// swith optionalvalue {
//   case .none:
//    print("This Optional variable is nil")
//   case .some(let value):
//    print("Value is \(value)")
// }

//기존변수처럼 사용 가능
//nil 할당 가능
//잘못된 접근으로 인한 런타임 오류 발생


// ? : 일반적인 옵셔널, 타입뒤에 물음표를 써서 값이 있을수도 없을수도 있는 변수이다 라는 표현
// var optionalValue: Int? = 100
//기존변수처럼 사용 불가 : 옵셔널과 일반값은 다른 타입이므로 연산 불가

//9.1 옵셔널 추출
//optional binding : 옵셔널 바인딩 ( 옵셔널의 값을 꺼내오는 방법 중 하나, nil체크 + 안전한 값 추출 )
//force unwrapping : 강제 추출

func printName(_ name: String) {
    print(name)
}

var myName: String! = nil

// printName(myName) 전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}
// name상수는 if-let 구문 내에서만 사용 가능
// 상수 사용 범위를 벗어낚기 때문에 컴파이 오류 발생
//printName(name)


