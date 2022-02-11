import UIKit

//출력문 print, debugPrint, dump
var str: String = "Swift Programming"
print(str)
debugPrint(str)
dump(str)//잘 사용 안 한다.

class Student{
    var name = "홍길동"
}
//클래스 객체 선언
var student = Student()//new라는 키워드가 없다
print(student)
print(student.name)
debugPrint(student)
dump(student)//내부적 객체값을 볼 수 있다

//문자열 보간 : 문자열 연결
var age = 30
//print("저의 나이는" + age)//+를 사용 못 한다
print("저의 나이는 \(age)입니다.");// \(변수)로 출력
print("저의 나이는 " ,age, "입니다")// ,변수, 로 연결 가능
