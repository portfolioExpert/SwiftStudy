import UIKit

//변수, 상수
//변수: 메모리 공간
//상수: Constant: 값이 한번 정해지면 못바꾸는 변수

//변수 var
//상수 let -> Letter

//변수 선언
//var 변수이름: 자료형(변수타입) = 값(변수)
var myVar = 10 //타입 추정
var myVar2: Int = 10 //명시적 선언

//상수의 선언
let myLet1 = 10
//myLet = 20; ->에러 재할당 X

//여러 변수 선언
var myVar1, myVar4, myVar3: Int
myVar1 = 1;
myVar4 = 2
myVar3 = 3

//변수명 짓는 법
//일반 변수, 함수 이름: 소문자 시작 ex) student, count
//클래스, 구조체, 열거형: 대문자 시작 ex) Student, Count
//첫 글자만 대문자로 적는 것: Camel Texting(카멜 표기법)
//코드를 잘 작성하는 법: 가독성있는 코드 작성하는 것
//클린코드 책: 코드리딩 시간이 80%, 코드작성 20%
