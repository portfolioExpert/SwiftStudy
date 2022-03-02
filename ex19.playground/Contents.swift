import UIKit

//옵셔널 채이닝
//널 체크를 편하게 해주는 방법

//옵셔널 변수 관련 기능
//옵셔널 바인딩: if let
//강제 언래핑 : !연산자 -> NULL이 아님을 확신하고 사용해야한다.
//이른 탈출(복귀) : guard let, guard else
//옵셔널 형변환 : as? 널이 아니면 형 변환
//옵셔널 기본값 : ?? "기본값" -> null이면 기본값 null이 아니면 원래 가지고있는 값이 들어간다

class Person{
    var objContact: Contact?
    //생성자 함수에서 초기화
    init(){
        self.objContact = Contact()
        
    }
}
class Contact{ //연락처
    var name : String? //초기화 안됨 -> nil
    var phone: String? //초기화 안됨 -> nil
    var email: String = "모름"
}
let p = Person()
dump(p)

p.objContact = nil
//objContact가 nil이므로 name = "변사또"로 대입되지 않고 지나감
p.objContact?.name = "변사또" //nil이면 뒤에 있는게 스킵(대입이 안된다)
dump(p)

//옵셔널 바인딩으로 처리할 때
if let newObj = p.objContact{
    newObj.name = "이몽룡"
}else{
    print("nil이다")
}
dump(p)
