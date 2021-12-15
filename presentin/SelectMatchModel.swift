//
//  Model.swift
//  presentin
//
//  Created by Daniel Bastos on 07/12/21.
//

import Foundation

class SelectMatchModel {
    static let matchButtons = [
        CategoryButton(label: "Cabeça", fields: ["Circunferencia", "Furos na orelha", "Pescoço"]),
        CategoryButton(label: "Torso", fields: ["Busto", "Cintura", "Quadril"]),
        CategoryButton(label: "Pernas", fields: ["Coxa", "Panturrilha", "Bainha"]),
        CategoryButton(label: "Pés", fields: ["Comprimento"])
    ]
}

struct CategoryButton {
    var label: String
    var fields: [String]
    
    init(label: String, fields: [String]) {
        self.label = label
        self.fields = fields
    }
}
