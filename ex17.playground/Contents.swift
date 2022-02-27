import UIKit
import Foundation

//열거형 Enum

//열거형 사용하는 이유 : 숫자보다는 문자로 기억하는 것이 쉽기 때문
//스위프트 열거형은 단순 배열이나 데이터타입이 아니라
//확장형입니다. 함수도 넣을 수 있다.

enum Weekday{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day : Weekday = Weekday.mon
day = Weekday.sat
day = .fri //열거형 타입을 알고 있기 때문에 생략이 가능 -> 타입 추정

//switch case 조건문과 연동
switch day{
case .mon, .tue, .wed, .thu:
    print("월화수목")
case .fri, .sat:
    print("금토")
default:
    print("일요일")
}

enum Hero: Int {
    case Ironman = 0
    case Spiderman = 1
    case Hulk //선언하지 않아도 자동으로 2가 들어간다.
}

print(Hero.Ironman)
print(Hero.Spiderman)
print(Hero.Hulk)

//숫자 찍는 법

print(Hero.Ironman.rawValue)
print(Hero.Spiderman.rawValue)
print(Hero.Hulk.rawValue)


//열거형 안에 함수를 넣을 수 있다.
enum Month{
    case jan, feb, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    func printMont(){
        switch self{
        case .jan, .feb, .mar:
            print("1,2,3월")
        case .apr, .may, .jun:
            print("4,5,6월")
        case .jul, .aug, .sep:
            print("7,8,9월")
        case .oct, .nov, .dec:
            print("10,11,12월")
        }
    }
}
Month.apr.printMont()
