import UIKit

//스위프트의 객체 타입
//Any, AnyObject, nil

//Any 타입: 모든 데이터 타입을 담을 수 있는 타입 -> 자바의 Object와 비슷
//          기본 데이터 타입: Int, Float, Double, Bool, Spring
//          Class, Struct, Enum, Array

var myAny : Any = 100
myAny = "문자열"
myAny = true

//AnyObject 타입: 모든 클래스 타입을 담을 수 있다.
class MyClass1{
    var name = "홍길동"
}
class MyClass2{
    var age = 30
}
var myAnyObject: AnyObject = MyClass1()
myAnyObject = MyClass2()

//nil 타입: 널 비어있음 NULL null 비어있는 객체변수(참조변수)
//var myNil = nil
var myNil : Int? = nil

//nil(null): 수많은 참조 에러가 생김!
//Swift에서도 null 체크를 편하게 해보자!
//Null exception의 발생빈도를 줄여보자 -> 옵셔널 변수
