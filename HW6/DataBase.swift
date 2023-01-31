//
//  DataBase.swift
//  HW6
//
//  Created by Jarae on 31/1/23.
//

import Foundation
class DataBase{
    var users: [User] = []
    
    func showInfo(){
        print("all users info:")
        for user in users{
            print("\(user.lastName) \(user.name) \(user.code.rawValue)\(user.phoneNum)")
        }
    }
    func showInfoByCountry(_ country: PhoneCode){
        print("users info by country \(country):")
        for user in users{
            if user.code == country{
                print("\(user.lastName) \(user.name) \(user.code.rawValue)\(user.phoneNum)")
            }
            
        }
    }
}
