//
//  main.swift
//  Swift_Basic
//
//  Created by 이석호 on 2023/01/06.
//

import Foundation


///변수와 상수

var name = "LeeSeokHo"
let birth_year = 2000


///정적 타이핑

var name_ : String = "mark"
let birth_year_ : Int = 1990
var hieght : Float = 170.3
//print(Float(birth_year_) + hieght)
//print(String(birth_year_) + ":" + name_)


///타입추론

var name__ = "mark"
//print(name__)


///배열, 딕셔너리

var language = ["swift", "C", "python"]
var capital = [
    "한국" : "서울",
    "중국" : "베이징"
]
//print(capital["한국"])


///조건문

var num = 0
if num == 0{
//    print(num)
}
else if num == 1{
//    print(num)
}
if num.words.isEmpty{
//    print("@")
}
//switch num {
//    case 0..<1:
//    print(0)
//    case 1..<2:
//    print(1)
//    default:
//    print(-1)
//    }

//optional

var email : String? = ""
//print(email)

if let name : String = email{
//    print(name)
}

let arr : [String]? = nil
var isEmptyarr : Bool?

isEmptyarr = arr?.isEmpty == true

//print(isEmptyarr!)


///func

func hello(_ name : String?) -> String {
    if name == nil{return "hello"}
    else{return(name! + "hello")}
}
//print(hello(""))

func hello_generator() -> (String?) -> Int{
    func hello_(name : String?) -> Int{
        if let _ = name{
            return 0
        }
        else{
            return 1
        }
    }
    return hello_
}

//var hello = hello_generator()
//print(hello(nil))


///closure

func hello_generator_() -> (String?) -> Bool?{
    return {name in
        return name == nil
        }
}
//print(hello_generator_("hi"))

func hello_generator__() -> (String?) -> Bool?{
    return {$0 == nil}
}
//print(hello_generator__()(nil))

let hello_ : ((String?) -> Any) = {$0 == nil}
//print(hello_(nil))

var arr_ = [1, 2, 3, 4, 5]
//print(arr_.reduce(100){$0 - $1})


///struct, class

class Dog{
    var name : String?
    func hello(){
        print(self.name)
    }}

struct Cat{
    var name : String
    init(){
        self.name = "mark"
    }
    func hello(){
    print(self.name)
    }
}

var dog = Dog()
dog.name = nil
//dog.hello()

var cat = Cat()
cat.name = "lee"
//cat.hello()
//클래스는 참조 구조체는 복사


///property

class hex{
    var decimal : Int?
    var str : String?{
        get{
            if let _ = self.decimal{
                return String(self.decimal!, radix: 16)
            }
            else{
                return nil
            }
        }
        set{
            if let tmp = newValue{
                self.decimal = Int(tmp)
            }
            else{
                self.decimal = nil
            }
        }
    }
}

var test = hex()
test.str = "15"
//print(test.decimal)
//print(test.str)
