//
//  Dog.swift
//  SUINavigation
//
//  Created by yekta on 28.02.2024.
//

import Foundation

struct Dog: Identifiable, Hashable{
    var id = UUID()
    let name:String
}

let dogs : [Dog] = [Dog(name: "Barny"), Dog(name: "Bobby"), Dog(name: "Daisy"), Dog(name: "Jack")]
