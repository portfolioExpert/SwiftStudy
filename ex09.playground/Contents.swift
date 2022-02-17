import UIKit

 //반복문
//for, while, repeat while

//반복적인 수행문을 실행할 때
//자바: for(초기화, 조건, 증감문) -> 스위프트 사라짐

//스위프트는 파이썬과 같이 범위 연산자를 통해 for문

//for문
for i:Int in 1...10{
    print(i)
}

//0~99까지 출력
for i:Int in 0..<100{
    print(i)
}

//연습문제
//10~35까지 출력하시오.
for i:Int in 0...25{
    print(i + 10)
}


//100~0까지 출력 -> 뒤로 출력
for i:Int in (0...100).reversed(){
    print(i)
}

//1~100까지 2씩 증가하여 출력
for i:Int in stride(from: 1, to: 100, by: 2){
    print(i)
}

//for 문으로 배열 순환
var arrayInt = [1,2,3,4,5]
print(arrayInt[0])
print(arrayInt[1])
for intValue in arrayInt{
    print(intValue)
}

//for문으로 딕셔너리 값을 순환하기
//딕셔너리 : 자바 Map과 동일한 자료구조(Key-Value)
let persons = [ "john": 1000, "tom": 2000, "hong": 3000]
print(persons["john"]!)//!: 강제로 값을 가져오도록하는 것

//for문 딕셔너리로 돌리기
for(name, money) in persons{
    print(name)
    print(money)
}

//while문
//패턴분석
//초기화
//while(조건문){
//수행문
//증감문
//}
var index:Int = 0
while index < 10{
    print(index)
    index += 1
}

//연습문제
//1~100까지 2의 배수만 출력하시오.
var i = 1
while i <= 100{
    if i % 2 == 0{
        print(i)
    }
    i+=1
}

//무한반복문: 특정조건이 될때까지 무한히 반복되는 수행문
var index3 : Int = 1
while true{
    if index3 > 10{
        break
    }
    print(index3)
    index3+=1
}

//1~100까지 1씩 증가하면서, 2의배수만 출력하되 90보다 크면 탈출
for i in 1...100{
    if 90 < i{
        break
    }
    if i % 2 == 0{
        print(i)
    }
}

//repeat-while문: 자바 do-while과 동일
//적어도 한번은 수행
//초기화
//repeat{
//수행문
//증감문
//} while 조건문

var index4 = 0
repeat{
    print(index4)
    index4+=1
} while index4 < 10

//이중 for문
//구구단 출력: 2~9단, 각 단에는 1~9까지 값을 곱한 값
for i in 2...9{
    for j in 1...9{
        print("\(i) * \(j) = \(i * j)")
    }
    print()
}

//레이블 구문: 탈출지점을 알려준다
//이중, 삼중 for문에서 break문으로 탈출시, 원하는 루프를 지정 가능
OUTER: for i in 1...10{
    for j in 1...10{
        if i > 3{
            break OUTER
        }
        print( "\(i), \(j)" )
    }
}
