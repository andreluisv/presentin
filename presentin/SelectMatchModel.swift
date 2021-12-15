//
//  Model.swift
//  presentin
//
//  Created by Daniel Bastos on 07/12/21.
//

import Foundation

class SelectMatchModel {
    private let _shareUsernameKey = "share_username"
    
    static let shared = SelectMatchModel()
    
    static let matchButtons = [
        CategoryButton(label: "Cabeça", fields: ["Circunferencia", "Furos na orelha", "Pescoço"]),
        CategoryButton(label: "Torso", fields: ["Busto", "Cintura", "Quadril"]),
        CategoryButton(label: "Pernas", fields: ["Coxa", "Panturrilha", "Bainha"]),
        CategoryButton(label: "Pés", fields: ["Comprimento"])
    ]
    
    let users = [
        SelectMatchFactory.createDaniel(),
        SelectMatchFactory.createRods(),
        SelectMatchFactory.createAndre(),
        SelectMatchFactory.createLoureiro(),
    ]
    
    func findUser(username: String) -> User {
        if let user = (users.filter { user in
            user.username == username
        }.first) {
            UserDefaults.standard.set(user.username, forKey: _shareUsernameKey)
            return user
        }
        return User(measures: Measures(), username: "Not found", name: "Loading")
    }
    
    func getMatchUser() -> Measures {
        if let username = UserDefaults.standard.value(forKey:_shareUsernameKey) as? String {
            return findUser(username: username).measures
        }
        return Measures()
    }
    
    func clearMatch() {
        UserDefaults.standard.set("", forKey: _shareUsernameKey)
    }
}

struct CategoryButton {
    var label: String
    var fields: [String]
    
    init(label: String, fields: [String]) {
        self.label = label
        self.fields = fields
    }
}

struct User {
    var measures: Measures
    var username: String
    var name: String
}

struct Measures: Codable {
    var pernas: Pernas
    var cabeca: Cabeca
    var pes: Pes
    var torso: Torso
    
    init() {
        pernas = Pernas()
        cabeca = Cabeca()
        pes = Pes()
        torso = Torso()
    }
    
    init(pernas: Pernas, cabeca: Cabeca, pes: Pes, torso: Torso) {
        self.pernas = pernas
        self.cabeca = cabeca
        self.pes = pes
        self.torso = torso
    }
}

struct Pernas: Codable {
    var bainha: Int
    var coxa: Int
    var panturrilha: Int
    
    init () {
        bainha = 0
        coxa = 0
        panturrilha = 0
    }
    
    init (bainha: Int, coxa: Int, panturrilha: Int) {
        self.bainha = 0
        self.coxa = 0
        self.panturrilha = 0
    }
}

struct Torso: Codable {
    var busto: Int
    var cintura: Int
    var quadril: Int
    
    init() {
        busto = 0
        cintura = 0
        quadril = 0
    }
    
    init(busto: Int, cintura: Int, quadril: Int) {
        self.busto = busto
        self.cintura = cintura
        self.quadril = quadril
    }
}

struct Pes: Codable {
    var comprimento: Int
    
    init(comprimento: Int) {
        self.comprimento = comprimento
    }
    
    init() {
        comprimento = 0
    }
}

struct Cabeca: Codable {
    var circunferencia: Int
    var furosOrelha: Int
    var pescoco: Int
    
    init() {
        circunferencia = 0
        furosOrelha = 0
        pescoco = 0
    }
    
    init(circunferencia: Int, furosOrelha: Int, pescoco: Int) {
        self.circunferencia = circunferencia
        self.furosOrelha = furosOrelha
        self.pescoco = pescoco
    }
}
