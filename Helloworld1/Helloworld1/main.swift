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

var myName: String? = nil

// printName(myName) 전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}
// name상수는 if-let 구문 내에서만 사용 가능
// 상수 사용 범위를 벗어낚기 때문에 컴파이 오류 발생
//printName(name)

var myName2: String! = nil

if let name2: String = myName2 {
    printName(name2)
} else {
    print("myName2 == nil ")
}

// name 상수는 if-let 구문내에서만 사용 가능합니다.
// 상수 사용범위를 벗어났기 떄문에 컴파일 오류 발생

//printName(name2)

var myName3: String? = "yagom"
var yourName3: String? = nil

if let name3 = myName3, let friend3 = yourName3 {
    print("\(name3) and \(friend3)")
}
// yourName3이 nil이기 때문에 실행되지 않음

yourName3 = "hana"

if let name3 = myName, let friend3 = yourName3 {
    print("\(name3) and \(friend3)")
}

//Force Unwrapping
// 옵셔널의 값을 강제로 추출

var myName4: String? = "yagom"

printName(myName4!)

myName4 = nil

//print(myName4!)
//강제 추출시 값이 없으므로 런타임 오류 발생

var yourName4: String! = nil

//printName(yourName4)
// nil 값이 전달되기 때문에 런타임 오류 발생

// 10. 구조체
// struct 이름 {
//    구현부
// }

struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
// 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
        
    }
    
// 타입 메서드
    static func typeMethod() {
        print("type method")
    }
    
}
    
//구조체 사용
//가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

//immutable.mutableProperty = 200
//immutable.immutableProperty = 200


// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다
// 컴파일 오류 발생
//mutable.typeProperty = 400
//mutable.typeMethod()


//학생 구조체
struct Student {
    // 가변 프로퍼티
    var name: String = "unknown"
    
    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"
    
    // 타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 불변 인스턴스 생성
let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 unknown입니다

// 11. 클래스

// class 이름 {
//     구현부
// }


//프로퍼티 및 메서드 구현
// 클래스는 다중상속이 되지 않음
// 상속 후 재정의가 가능한 class 타입메서드
// 상속 후 재정의가 불가능한 static 타입메서드

class Sample2 {
    // 가변 프로퍼티
    var mutableProperty: Int = 100
    
    // 불변 프로퍼티
    let immutableProperty: Int = 100
    
    // 타입 프로퍼티
    static var typeProperty: Int = 100
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}


//클래스 사용
// 인스턴스 생성 - 참조정보 수정 가능
var mutableReference: Sample2 = Sample2()

mutableReference.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
// 컴파일 오류 발생
//mutableReference.immutableProperty = 200


// 인스턴스 생성 - 참조정보 수정 불가
let immutableReference: Sample2 = Sample2()

// 클래스의 인스턴스는 참조 타입이므로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능합니다
immutableReference.mutableProperty = 200

// 다만 참조정보를 변경할 수는 없습니다
// 컴파일 오류 발생
//immutableReference = mutableReference

// 참조 타입이라도 불변 인스턴스는
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutableReference.immutableProperty = 200


// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutableReference.typeProperty = 400
//mutableReference.typeMethod()


//학생 클래스 만들어보기
class Student2 {
    // 가변 프로퍼티
    var name: String = "unknown"
    
    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"
    
    // 타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭
    // 몇몇 경우를 제외하고 사용은 선택사항
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce()

// 인스턴스 생성
var yagom2: Student2 = Student2()
yagom2.name = "yagom"
yagom2.class = "스위프트"
yagom2.selfIntroduce()

// 인스턴스 생성
let jina2: Student2 = Student2()
jina2.name = "jina"
jina2.selfIntroduce()

// 12. 열거형
//스위프트의 열거형은 다른 언어의 열거형과는 많이 다름. 잘 살펴보아야 할 스위프트의 기능 중 하나이다

// enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의.
// 각 case는 소문자 카멜케이스로 정의.
// 각 case는 그 자체가 고유의 값.
// 각 케이스는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있습니다
// enum 이름 {
//     case 이름1
//     case 이름2
//     case 이름3, 이름4, 이름5
//     // ...
// }


// 열거형 사용
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됩니다
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
day = .tue

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면 default를 작성할 필요가 없음
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}


// 원시값
// C 언어의 enum처럼 정수값을 가질 수도 있다. rawValue를 사용하면 된다.
//case별로 각각 다른 값을 가져야한다.

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
    
// mango와 apple의 원시값이 같으므로 mango 케이스의 원시값을 0으로 정의할 수 없다
//    case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

// 정수 타입 뿐만 아니라 Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있습니다.
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")

// 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면
// case의 이름을 원시값으로 사용합니다
print("School.university.rawValue == \(School.university.rawValue)")


// 원시값을 통한 초기화
// rawValue를 통해 초기화 할 수 있습니다. rawValue가 case에 해당하지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다.

// rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로 Fruit 타입이 아닙니다
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있습니다
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
}

// 메서드
// 스위프트의 열거형에는 메서드도 추가할 수 있다.

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()


// 13. 클래스, 구조체, 열거형 비교
// Class
// 전통적인 OOP 관점에서의 클래스
// 단일상속
// (인스턴스/타입) 메서드
// (인스턴스/타입) 프로퍼티
// 참고타입
// 애플 프레임워크의 대부분의 큰 뼈대는 모둔 구조체로 구성

// Struct
// C언어 등의 구조체보다 다양한 기능
// 상속 불가
// (인스턴스/타입) 메서드
//(인스턴스/타입) 프로퍼티
// 값타입
// 스위프트 대부분의 큰 뼈대는 모두 구조체로 구성

// Enum( 열거형 )
// 다른 언어의 열거형과는 많이 다른 존재
// 상속불가
// (인스턴스/타입) 메서드
// (인스턴스/타입) 연산 프로퍼티
// 값타입
// 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의
// 예) 요일,상태값, 월(month)등
// 열거형 자체가 하나의 데이터 타입
// 열거형의 케이스 하나하나 전부 하나의 유의미한 값으로 취급
// 선언 키워드 : enum

// 열거형과 구조체는 값 타입이며, 클래스는 참조 타입이라는 것이 가장 큰 차이.
// 또한, 클래스는 상속이 가능하지만 구조체와 열거형은 상속이 불가능

// 구조체는 언제 사용하나?
// 연관된 몇몇의 값을 모아서 하나의 데이터 타입으로 표현하고 싶을때
// 다른 객체 또는 함수 등으로 전달될 때. 참조가 아닌 복사를 원할 때
// 자신을 상속할 필요가 없거나 자신이 다른 타입을 상속받을 필요가 없을 때
// 애플 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용

// Value vs Reference
// Value : 데이터를 전달할 때 값을 복사해서 전달
// Referencd : 데이터는 전달할 때 값의 메모리 위치를 전달

struct ValueType { //구조체
    var property = 1
}

class ReferenceType { //클래스
    var property = 1
}


let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한 별도의 인스턴스이기 때문에
// 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
// 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2


let firstClassReference = ReferenceType()
let secondClassReference = firstClassReference
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
// 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
// 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2

struct SomeStruct {
    var someProperty: String = "Property"
}

var omeStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var lovalVar: SomeStruct = structInstance
    lovalVar.someProperty = "ABC"
}

someFunction(structInstance: omeStructInstance)
print(omeStructInstance.someProperty) //Property


class SomeClass2 {
    var someProperty: String = "Property"
}
var someClassInstance: SomeClass2 = SomeClass2()

func someFunction2(classInstance: SomeClass2) {
    var localVar2: SomeClass2 = classInstance
    localVar2.someProperty = "ABC"
}

someFunction2(classInstance: someClassInstance)
print(someClassInstance.someProperty)

//public struct Int, Double, String, Dictionary<Key : Hashable, Value>, Arrya<Element>, Set<Element : hashable>

// 스위프트는 구조체, 열거형 사용을 선호
// 애플 프레임워크는 대부분 클래스 사용
// 애플 프레임워크 사용시 구조체/클래스 선택은 개발자 몫

// 14. 클로저
// 코드의 블럭
// 일급 시민(frist-citizen)
// 변수, 상수 등으로 저장, 전달인자로 전달이 가능
// 함수 : 이름이 있는 클로저
    
// 기본 클로저 문법
// { (매개변수 목록) -> 반환타입 in
//        실행 코드
// }
// 매개변수가 필요없으면 매개변수 목록은 비워 두어도 된다.
// 반환값이 없으면 void

// 함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult) //3

// 클로저 사용시
let sum1: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

sumResult = sum1(1, 2)
print(sumResult) // 3


//함수의 전달인자로서의 클로저
//클로저는 주로 함수의 전달인자로 많이 사용. 함수 내부에서 원하는 코드블럭을 실행할 수 있다.

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
} //중괄호 안에 있는 부분이 클로저

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b) //함수안에서 전달받은 클로저를 호출
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)
print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated) // 5

//따로 클로저를 상수/변수에 넣어 전달하지 않고, 함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.
calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) // 500

/* 다양한 클로저표현
클로저는 다양한 모습으로 표현될 수 있습니다.

함수의 매개변수 마지막으로 전달되는 클로저는 후행클로저(trailing closure)로 함수 밖에 구현할 수 있습니다.
컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.
반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략하더라도 반환 값으로 취급합니다.
전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름($0, $1, $2...)을 사용 할 수 있습니다. */

// 14.1 클로저 고급
//주의점 : 다양한 표현법이 있기 때문에 남이 이해하기 적당한 선에서 축약 문법을 사용하는 것이 좋다.
//클로저 매개변수를 갖는 함수 calculate(a:b:method:)와 결과값을 저장할 변수 result를 먼저 선언해둔다.

func calculate14(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int


//후행 클로저
//클로저가 함수의 마지막 전달인자라면 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현할 수 있다.

result = calculate14(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}
print(result) // 20


// 반환타입 생략
// calculate(a:b:method:) 함수의 method 매개변수는 Int 타입을 반환할 것이라는 사실을
// 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다.
// 대신 in 키워드는 생략할 수 없습니다.

result = calculate14(a: 10, b: 10, method: { (left: Int, right: Int) in
        return left + right
    }
)
print(result) // 20

// 후행클로저와 함께 사용할 수도 있습니다
result = calculate14(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}
print(result) // 20


// 단축 인자이름
// 클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있다
// 단축 인자이름은 클로저의 매개변수의 순서대로 $0, $1, $2... 처럼 표현한다.

result = calculate14(a: 10, b: 10, method: {
return $0 + $1
})
print(result) // 20


// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate14(a: 10, b: 10) {
    return $0 + $1
}
print(result) // 20


// 암시적 반환 표현
// 클로저가 반환하는 값이 있다면 클로저의 마지막 줄의 결과값은 암시적으로 반환값으로 취급한다.

result = calculate14(a: 10, b: 10) {
    $0 + $1 //마지막 줄은 당연히 리턴으로 처리됨
}
print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있다.
result = calculate14(a: 10, b: 10) { $0 + $1 }
print(result) // 20


//축약 전과 후 비교
//축약 전
result = calculate14(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate14(a: 10, b: 10) { $0 + $1 }

print(result) // 20

// 15. 프로퍼티
/* 프로퍼티의 종류
저장 프로퍼티
연산 프로퍼티
인스턴스 프로퍼티
타입 프로퍼티
*/


/* 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.
 연산 프로퍼티는 var로만 선언할 수 있습니다.
*/

struct Student1 {
    
    // 인스턴스 저장 프로퍼티 : 값을 저장해 주기 위한 것.
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    // 인스턴스 연산 프로퍼티 : 특정한 연산을 수행해 주기 위한 것.
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    // 타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    /*
     // 인스턴스 메서드
     func selfIntroduce() {
     print("저는 \(self.class)반 \(name)입니다")
     }
     */
    
    // 읽기전용 인스턴스 연산 프로퍼티(get)
    // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있습니다
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    
    /*
     // 타입 메서드
     static func selfIntroduce() {
     print("학생타입입니다")
     }
     */
    
    // 읽기전용 타입 연산 프로퍼티
    // 읽기전용에서는 get을 생략할 수 있습니다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

// 타입 연산 프로퍼티 사용
print(Student1.selfIntroduction)
// 학생타입입니다

// 인스턴스 생성
var yagom1: Student1 = Student1()
yagom1.koreanAge = 10

// 인스턴스 저장 프로퍼티 사용
yagom1.name = "yagom"
print(yagom1.name)
// yagom

// 인스턴스 연산 프로퍼티 사용
print(yagom1.selfIntroduction)
// 저는 Swift반 yagom입니다

print("제 한국나이는 \(yagom1.koreanAge)살이고, 미쿡나이는 \(yagom1.westernAge)살입니다.") //연산 프로퍼티
// 제 한국나이는 10살이고, 미쿡나이는 9살입니다.


//응용
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double { //달러->원 환산
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)
// 11000

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
// 11000

/*
지역변수 및 전역변수
저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.
*/

var a15: Int = 100
var b15: Int = 200
var sum15: Int {
    return a15 + b15
}

print(sum15) // 300


// 15.1 프로퍼티 감시자

/*
 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행할 수 있다.
 */

struct Money15 {
    // 저장 프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) { //바뀌기 전의 값
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }
        
        didSet(oldRate) { //바뀐 후의 값
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }
    
    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        // willSet의 암시적 매개변수 이름 newValue
        willSet { //암시적 매개변수의 이름 생략 가능
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }
        
        // didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }
    
    // 연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        
        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없다
         willSet {
         
         }
         */
    }
}

var moneyInMyPocket1: Money = Money()
// 환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPocket1.currencyRate = 1150
// 환율이 1100.0에서 1150.0으로 변경되었습니다

// 0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPocket1.dollar = 10
// 0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPocket1.won)
// 11500.0

// 16. 상속
/*
 스위프트의 상속은 클래스, 프로토콜 등에서 가능하다
 열거형, 구조체는 상속 불가
 시위프트는 다중상속을 지원하지 않음
 무조건 단일 상속
 */
/*
// 클래스의 상속과 재정의
class 이름: 상속받을 클래스 이름 {
    /* 구현부 */
}
*/

// 기본 클래스 Person
class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    // final 키워드를 사용하여 자식 클래스에서 재정의를 방지할 수 있습니다
    final func sayHello() {
        print("hello")
    }
    
    // 타입 메서드
    // 자식클래스에서 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 자식 클래스에서 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // 재정의 가능한 class 메서드라도 final 키워드를 사용하면 재정의 할 수 없습니다
    // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 합니다
    final class func finalCalssMethod() {
        print("type method - final class")
    }
}

// Person을 상속받는 Student
class Student16: Person {
//    var name: String = "" 컴파일 오류, name은 위에서 상속받아서 오류남
    var major: String = ""
    
    override func selfIntroduce() { //새로운 동작구현(덮어씌워짐)
        print("저는 \(name)이고, 전공은 \(major)입니다")
//        super.selfIntroduce() 부모클래스를 호출하게 됨
    }
    
    override class func classMethod() { //클래스는 재정의 가능.
        print("overriden type method - class")
    }
    
    // static을 사용한 타입 메서드는 재정의 할 수 없습니다
    //    override static func typeMethod() {    }
    
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
    //    override func sayHello() {    }
    //    override class func finalClassMethod() {    }
    
}


let yagom16: Person = Person()
let hana: Student16 = Student16()

yagom16.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom16.selfIntroduce()
// 저는 yagom입니다

hana.selfIntroduce()
// 저는 hana이고, 전공은 Swift입니다

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalCalssMethod()
// type method - final class


Student16.classMethod()
// overriden type method - class

Student16.typeMethod()
// type method - static

Student16.finalCalssMethod()
// type method - final class
