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

