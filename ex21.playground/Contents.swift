import UIKit

//형변환 type casting

let myInt: Int = 10
let myFloat:Float = 3.14
let myString : String = "123"

//Int -> Double
let myDouble : Double = Double(myInt)
let myInt2 : Int = Int(myFloat)

//Int -> String (숫자는 아라비아 숫자를 넣어야한다)
let myString2 : String = String(myInt)
//String -> Int (혹시 널이 될 수 있기 때문에 ? 를 붙여준다)
let myInt3 : Int? = Int(myString)

//안전하게 사용하기 위해서, 옵셔널 바인딩 if let
if let newInt = Int(myString){
    //형변환 성공: newInt가 nil이 아님
    print(newInt)
}else{
    //newInt가 nil임, 아라비아 숫자가 아닌 경우도
    print("형변환 실패")
}

//클래스의 형변환 (다형성)
//다형성 : 상속관계에서 특정한 클래스만 빼오는 것
class Person{
    var name : String = ""
    func breath(){
        print("숨쉬기")
    }
}
class Student : Person{
    var school : String = ""
    func gotoSchool(){
        print("학교가기")
    }
}
class UnivStudent : Student{
    var major: String = ""
    func gotoMT(){
        print("MT가기")
    }
}
var grandFafa : Person = Person()
var fafa : Student = Student()
var son : UnivStudent = UnivStudent()

//is연산자 : 상속관계의 클래스 객체의 속성을 검사해 볼 수 있다.
grandFafa is Person
grandFafa is Student
grandFafa is UnivStudent

fafa is Person
fafa is Student
fafa is UnivStudent

son is Person
son is Student
son is UnivStudent

//as연산자 : 클래스 형변환 연산자
//as? 연산자 : nil일 수 있기에
var optionalCasted: Student?
optionalCasted = grandFafa as? UnivStudent
optionalCasted = fafa as? UnivStudent
optionalCasted = son as? UnivStudent

//?? 연산자 : nil이면 디폴트값으로 주는 연산자
optionalCasted = grandFafa as? UnivStudent ?? UnivStudent () //nil이면 UnivStudent를 주는 것

//as! 연산자 : nil임을 각오하고 강제 형변환을 해달라
var forcedCasted : Student?
//forcedCasted = grandFafa as! UnivStudent
forcedCasted = grandFafa as? UnivStudent
