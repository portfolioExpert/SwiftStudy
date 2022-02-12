import UIKit

//기본자료형 (type)
//Int, UInt, Float, Double, Bool, Character, String
//-> 구조체로 되어있다
//Int : 정수형 기본 4바이트 (64비트 운영체제 8바이트)
//UInt: unsigned int 음수값이 없다는 의미 0, 1, 2, 3, 4, 5....

//Float: 실수형(4바이트), Double : 실수형(8바이트)
//예) 3.14, 2.46, 10/3 -> 3.33333333........

//Bool : 논리형(1바이트) true, false만 존재
//Character: 문자형(2바이트) - 유니코드 지원 UTF-8
//->''를 지원하지 않는다
var ch : Character = "a";

//String: 문자열(가변크기) : 메모리 제한만큼 늘어난다.
//+ 사용 가능
var str : String = "대한"

//여러줄 문자열 """ 쌍따옴표 세개
var str1 = """
    여러줄
    문자열
    입력
    """
print(str1)
