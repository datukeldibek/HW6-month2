//
//  main.swift
//  HW6
//
//  Created by Jarae on 31/1/23.
//

import Foundation
 
print("enter users number:", terminator: " " )
var userNum: Int?
userNum = Int(readLine()!)

var database = DataBase()
for i in 1...userNum!{
    print("input \(i)th user:")
    let name = readLine()!
    let lastName = readLine()!
    let code: PhoneCode?
    code = PhoneCode(rawValue: readLine()!)
    let number = readLine()!
    
    let user = User(name: name, lastName: lastName, phoneNum: number, code: code!)
    database.users.append(user)
}

database.showInfo()
database.showInfoByCountry(.kr)
