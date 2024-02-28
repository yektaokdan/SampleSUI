//
//  Cat.swift
//  SUINavigation
//
//  Created by yekta on 28.02.2024.
//

import Foundation

struct Cat : Identifiable, Hashable{
    var id = UUID()
    let name:String
}

let cats:[Cat] = [Cat(name: "Gofik"), Cat(name: "Tarcin"), Cat(name: "Tursu")]
