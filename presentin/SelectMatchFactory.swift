//
//  SelectMatchFactory.swift
//  presentin
//
//  Created by Daniel Bastos on 14/12/21.
//

import Foundation

class SelectMatchFactory {
    static func createCabeca1() -> Cabeca {
        return Cabeca(circunferencia: 60, furosOrelha: 0, pescoco: 40)
    }
    
//    func createCabeca2() -> Cabeca {
//        return Cabeca(circunferencia: 50, furosOrelha: 1, pescoco: 35)
//    }
//    
//    func createCabeca3() -> Cabeca {
//        return Cabeca(circunferencia: 54, furosOrelha: 2, pescoco: 38)
//    }
    
    static func createTorso1() -> Torso {
        return Torso(busto: 70, cintura: 65, quadril: 68)
    }
    
//    func createTorso2() -> Torso {
//        return Torso(busto: 68, cintura: 67, quadril: 67)
//    }
//
//    func createTorso3() -> Torso {
//        return Torso(busto: 72, cintura: 70, quadril: 70)
//    }
    
    static func createPernas1() -> Pernas {
        return Pernas(bainha: 100, coxa: 60, panturrilha: 40)
    }
    
//    func createPernas2() -> Pernas {
//        return Pernas(bainha: 120, coxa: 65, panturrilha: 45)
//    }
//
//    func createPernas3() -> Pernas {
//        return Pernas(bainha: 110, coxa: 70, panturrilha: 50)
//    }
    
    static func createPes1() -> Pes {
        return Pes(comprimento: 43)
    }
    
//    func createPes2() -> Pes {
//        return Pes(comprimento: 40)
//    }
//
//    func createPes3() -> Pes {
//        return Pes(comprimento: 39)
//    }
    
    static func createDaniel() -> User {
        let measures = Measures(pernas: createPernas1(), cabeca: createCabeca1(), pes: createPes1(), torso: createTorso1())
        return User(measures: measures, username: "danbsts", name: "Daniel Bastos")
    }
    static func createAndre() -> User {
        let measures = Measures(pernas: createPernas1(), cabeca: createCabeca1(), pes: createPes1(), torso: createTorso1())
        return User(measures: measures, username: "andrevas", name: "Andre Vasconcelos")
    }
    static func createRods() -> User {
        let measures = Measures(pernas: createPernas1(), cabeca: createCabeca1(), pes: createPes1(), torso: createTorso1())
        return User(measures: measures, username: "rods", name: "Rodrigo Rodrigues")
    }
    static func createLoureiro() -> User {
        let measures = Measures(pernas: createPernas1(), cabeca: createCabeca1(), pes: createPes1(), torso: createTorso1())
        return User(measures: measures, username: "mll5", name: "Mateus Loureiro")
    }
}
