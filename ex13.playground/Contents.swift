import UIKit

//콜렉션 Collections (모음 - 라이브러리)
//1. 리스트 - List(배열 + 리스트) 자바: ArrayList와 int [] 유사
//2. 딕셔너리 - Dictionary(키 - 값): Map, HashMap
//3. 집합 - Set (집합구조) 자바: Set

//Array : 같은 타입의 데이터가 나란히 배열된 구조.(순서있다)
//Int 배열, String 배열, 구조체 배열, 객체(클래스) 배열

// 배열을 선언하는 방법
var myArray1: Array<Int> = Array<Int>()
var myArray2: Array<Int> = [] // 1순위
var myArray3: [Int] = [] // 2순위
var myArray4 = Array<Int>() // 타입추정
var myArray5 = [Int]() // 타입추정

var myArray6: [Int] = []
myArray6.append(10)
myArray6.append(20)
myArray6.append(30)
print(myArray6)
dump(myArray6)

//포함하고 있는가?
myArray6.contains(20)

//배열 갯수
myArray6.count
//요소 삭제
myArray6.remove(at:0) //첫번째 삭제
myArray6
myArray6.removeLast() //마지막 삭제
myArray6
myArray6.removeAll()

//중간에 추가시
myArray6.insert(40, at: 0)
myArray6.insert(50, at: 0)

//배열이 비어있는가?
myArray6.isEmpty

//배열의 순환
for myInt in myArray6{
    print(myInt)
}

//연습문제
//names 라는 문자열타입 배열 선언하고
//"tom"을 추가하고, "john"을 추가, "hana"를 추가
//배열의 갯수를 출력
//모든 배열의 요소를 출력
//"john"만 출력
//"tom이 배열-리스트안에 있는지 true/false로 출력

var names : Array<String> = []
names.append("tom")
names.append("john")
names.append("hana")
names.count
for output in names{
    print(output)
}

print(names[1])
names.contains("tom")

//요소의 인덱스를 가져올때
if let index = names.firstIndex(of: "tom"){
    print("tom의 인덱스는", index)
}

//배열관련 자료형
//NS계열 : NSArray(읽기만 가능), NSMutableArray(읽기, 쓰기 가능)
//Swift 계열 : Array(var, let) -> Swift를 많이 써라

//NSArray -> Array 변환
var myNSArray = NSArray(objects: "a", "b", "c")
//NSArray -> NSMutableArray
var myNSMutableArray = NSMutableArray(array: myNSArray)
//NSMutableArray -> Swift Array
if let mySwiftArray = myNSMutableArray as NSArray as? Array<String>{
    print(mySwiftArray)
}
//as 형변환
//as? : 옵셔널 형변환( 널이 아니면 변환하라!)

//Swift Array -> NSMutableArray
var mySwiftArray2 : [String] = ["a", "b", "c"]
var myMutableArray2 = NSMutableArray(array: mySwiftArray2)

//Swift Array -> NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)

//배열의 값 비교
let myArray7 = [1,2,3,4,5]
let myArray8 = [1,2,3,4,5]
if myArray7 == myArray8{
    print("같다")
}
else{
    print("다르다")
}

//배열의 값을 치환하기
var myArray9 = ["A", "B", "C"]
myArray9.replaceSubrange(0..<2, with: ["X", "Y"]) //0~1까지

//배열의 값 정렬
var myArray10 = ["나", "다" ,"가"]
let sortedArray = myArray10.sorted() // 오름차순
//역순
let reversedSoredArray = Array(myArray10.sorted().reversed())

//특정 범위에서 요소를 추출해서 배열 만들기
let rangeArray = sortedArray[0...1]

//구조체(클래스) 객체 배열 만들기
struct MyStruct{
    var name = "hong"
    var age = 30
    func myFunc(){
        print("myFunc()호출됨")
    }
}

//구조체 배열로 만들기
var myStructArray: [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

for myStruct in myStructArray{
    print(myStruct.name)
    print(myStruct.age)
    myStruct.myFunc()
}

//딕셔너리 Dictionary
//키-값으로 구성된 데이터 타입 자바: Map JS: Key-Value객체
//JSON 통신
// ["key1": value1, "key2": value2]

let myDic: [String : String] = ["key1": "value1", "key2" : "value2"]
print(myDic)//순서가 없다 -> 랜덤
//요소에 접근하는 법
print(myDic["key1"]!)
print(myDic["key2"]!)

var nameDic = ["name1": "홍길동", "name2": "변사또", "name3": "춘향이"]
//새로운 요소 추가
nameDic["name4"] = "이몽룡"
print(nameDic)

//Dic 순환
for (key, value) in nameDic{
    print(key)
    print(value)
}

//요소 삭제
nameDic.removeValue(forKey: "name2")
print(nameDic)

//갯수
nameDic.count

//NS계열: NSDictionary, NSMutableDictionary 변경가능(추가, 삭제)
//Swift계열: Dictionary(var, let) -> var는 수정가능, let은 수정불가

//집합은 Set -> 순서가 없는 랜덤 형식
//요소의 중복을 허용하지 않는 데이터 타입: 자바는 Set(HashSet)
var mySet : Set<Int> = [];
mySet.insert(30)
mySet.insert(20)
mySet.insert(10)
print(mySet)
mySet.insert(30) // 중복이라 무시된다. insert의 결과값은 true, false
print(mySet)

mySet.isEmpty//비어있는지
mySet.contains(20)//20이 담겨있는지

//집합 연산
var mySet2 : Set<Int> = [10, 20 ,30]
var mySet3: Set<Int> = [30, 40, 50]

//합집합 A+B
var setSum = mySet2.union(mySet3)
//교집합 A^B
var setCross = mySet2.intersection(mySet3)
//차집합 A-B
var setSub = mySet2.subtracting(mySet3)

//NS계열: NSSet 변경불가, NSMutableSet 변경가능
//Swift계열: Set( let, var)

