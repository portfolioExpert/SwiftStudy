import UIKit

//프토토콜 ( Protocol )
//가상함수 : 함수의 선언만 있고 본체(코드)는 없는 함수
//특징: 다중 상속 가능하다( 여러 프로토콜을 한 번에 상속(확장) 할 수 있다)

// -> 인터페이스와 동일한 것 같다

protocol Talkable{
    var lang: String {get} //읽기 속성만 존재
    var topic : String{ get set } //읽기 쓰기 속성이 존재
    func talk() //가상함수, 선언만 있고 본체는 없음 ->
}

protocol Runnable{
    func run() //가상함수
}

struct Person : Talkable, Runnable { //둘다 상속 받았으니 모두 구체화 해줘야한다.
    var lang: String // 프로퍼티 준수
    var topic : String // 프로퍼티 준수
    func talk(){
        print( "말할 수 있음" )
    }
    func run() {
        print( "달릴 수 있음" )
    }
}

var p: Person = Person(lang: "영어", topic: "교육주제")
p.talk()
p.run()

//클래스의 오버로딩: 함수의 이름은 같고 매개변수를 다르게 함으로 확장하는 것
//클래스의 오버라이딩: 자식클래스가 부모클래스의 메소드를 재정의해서 사용하는 것
class ParentClass{
    func printMyName(name:String){
        print("parent : " , name)
    }
    func printMyName(name: String, age: Int){
        print("parent : " , name)
        print("age : ", age)
    }
}
var pClass : ParentClass = ParentClass()
pClass.printMyName(name: "아버지")
pClass.printMyName(name: "아버지", age : 40)

class ChildClass : ParentClass{
    //오버라이딩: 재정의
    override func printMyName(name: String) {
        print("child : " ,name)
    }
}

var cClass : ChildClass = ChildClass()
cClass.printMyName(name: "아들")
