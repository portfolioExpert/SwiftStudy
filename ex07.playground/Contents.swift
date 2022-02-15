import UIKit

//연산자 Operator

//연산자 우선순위 산술 > 비교 > 논리 > 대입
var result = 10 + 2 - 3 / 4 * 7;
//연산자 우선순위가 햇갈리면, 소괄호를 묶으면 된다.

//산술: + - * /(몫) %(나머지) -> 연산결과가 값으로 나온다
//비교: ==(같은가), != (같지 않는가) < > <= >= -> 연산결과가 true/false로 나온다.
//논리: &&, ||, ! -> true/false로 나온다
//대입: =, +=, -=, *=, /=, %= -> 연산결과가 값으로 나옴

//증감연산자: ++, -- -> 스위프트는 없어짐
// result++ -> result + 1 또는 result += 1

var myInt: Int = 10
myInt += 1

//삼항 연산자 ? :
var mybool: Bool = (10 < 20) ? true : false

// ?? 연산자 : 앞의 값이 널이면 뒤의 값을 기본값(디폴트)으로 전달한다.
var name: String? = nil
name = "변사또"
print(name ?? "홍길동")

//범위 연산자: Range Operator 파이썬의 범위와 유사
//시작 값...종료값 으로 구성
let range = 1...10 // 10 포함
print(range)
for i in range{
    print(i)
}

let range2 = 1..<10 // 10보다 작은 값까지
for i in range2{
    print(i)
}

//뒤로 출력 reversed()
for i in range2.reversed(){
    print(i)
}

//대입 연산자
var myNum1 = 10
myNum1 += 1
myNum1 -= 1
myNum1 *= 1
myNum1 /= 1
myNum1 %= 1
