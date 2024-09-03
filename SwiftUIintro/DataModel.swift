//
//  DataModel.swift
//  SwiftUIintro
//
//  Created by Arantza Castro Dessavre on 28/08/24.
//

import Foundation
import SwiftUI

struct Contact: Identifiable{
    let id = UUID()
    var name: String
    var phoneNumber: String
    var icon: String
    var color: Color
    
    var isValid: Bool{
        !name.isEmpty && !phoneNumber.isEmpty
    }
    
    static var sampleData: [Contact] = [ Contact(name: "yat", phoneNumber: "5555545555", icon: "🍎", color: .blue),Contact(name: "yat", phoneNumber: "5555545555", icon: "🍎", color: .pink),Contact(name: "yat", phoneNumber: "5555545555", icon: "🍎", color: .pink),Contact(name: "yat", phoneNumber: "5555545555", icon: "🍎", color: .pink)
    ]
    
}

struct Materia: Identifiable{
    var id = UUID()
    var profesor: String
    var grupo: Int
    var dias: [Int]
    var bloque: Int
    
}

    let bloques : [Int] = [1,2,3,4,5,6,7,89,0,]

