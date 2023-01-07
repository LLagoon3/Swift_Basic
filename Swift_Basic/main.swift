//
//  main.swift
//  Swift_Basic
//
//  Created by 이석호 on 2023/01/06.
//

import Foundation

//변수와 상수
var name = "LeeSeokHo"
let birth_year = 2000

//정적 타이핑
var name_ : String = "mark"
let birth_year_ : Int = 1990
var hieght : Float = 170.3
//print(Float(birth_year_) + hieght)
//print(String(birth_year_) + ":" + name_)

//타입추론
var name__ = "mark"
//print(name__)

//배열, 딕셔너리
var language = ["swift", "C", "python"]
var capital = [
    "한국" : "서울",
    "중국" : "베이징"
]
//print(capital["한국"])

//조건문
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

var email : String? = "mark"
//print(email)

if let name = email{
//    print(name)
}

let arr : [String]? = nil
var isEmptyarr : Bool?

isEmptyarr = arr?.isEmpty == true

print(isEmptyarr!)


