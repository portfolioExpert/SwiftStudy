import UIKit

//조건문 if 문, switch 문

//if문의 4가지 패턴
//1. 단일 if
if true{//소괄호는 없어지고, 중괄호 생략 불가
    //참일 때 수행
}

//2. if else문
if false{
    //참일때
}
else{
    //거짓일때
}
//3. if else if 문
if false{
    //1.
}
else if true{
    //2.
}
else{
    //3.
}
//4. 중첩 if문(if안에 if)
//3번 깊이 이상 권장하지 않는다.
if true{
    if false{
        
    }
    else{
        
    }
}

//랜덤수 발생
let randomNum: UInt32 = arc4random_uniform(100); // 0~99 까지 랜덤 수 발생
//UInt32 -> Int 로 형변환
let intValue: Int = Int(randomNum);

let lottoNum : UInt32 = arc4random_uniform( 45 ) + 1 // 1~ 45 사이 랜덤 수

//switch case 문
switch lottoNum{
case 0:
    print("0")
case 1...20:
    print("1~20")
case 21...45:
    print(21...45)
default:
    print("그외의 값")
}
//연습문제
//1부터 10 사이의 랜덤수를 발생 시키고 if문을 이용하여 5보다 작으면 "5보다 작음", 8보다 작으면 "8보다 작음", 그외 수면 "그외의 수"
var number : UInt32 = arc4random_uniform(10) + 1;
if number < 5{
    print("5보다 작음")
}
else if number < 8{
    print("8보다 작음")
}
else{
    print("그외의 수")
}

switch number{
case 1..<5:
    print("5보다 작음")
case 5..<8:
    print("8보다 작음")
default:
    print("그외의 수")
}
