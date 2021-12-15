////
////  MeasureModel.swift
////  presentin
////
////  Created by Daniel Bastos on 14/12/21.
////
//
//import Foundation
//import UIKit
//
//class MeasureModel {
//    private let _doguinhoKey = "measures"
//
//    static let shared = MeasureModel()
//
//
//    let cachorros = [Cachorro(imagem: "bulldog", raca: "Bulldog", porte: "Pequeno", expectativaVida: 14),
//                         Cachorro(imagem: "maltes", raca: "Maltês", porte: "Pequeno", expectativaVida: 13),
//                         Cachorro(imagem: "pastor", raca: "Pastor Alemão", porte: "Grande", expectativaVida: 12),
//                         Cachorro(imagem: "chihuahua", raca: "Chihuahua", porte: "Pequeno", expectativaVida: 15)]
//
//
//    private init() {
//
//    }
//
//    func getDoguinhos() -> [Doguinho] {
//        let arrayVazio = [Doguinho]()
//        print("get")
//        if let data = UserDefaults.standard.value(forKey:_doguinhoKey) as? Data, let doguinhos = try? PropertyListDecoder().decode(Array<Doguinho>.self, from: data) as? [Doguinho] {
//
//            return doguinhos
//        }
//
//        return arrayVazio
//    }
//
//    func salvarDoguinho(_ doguinho: Doguinho) {
//        var doguinhos = getDoguinhos()
//        doguinhos.append(doguinho)
//        UserDefaults.standard.set(try? PropertyListEncoder().encode(doguinhos),forKey: _doguinhoKey)
//    }
//
//    func removerDoguinho(_ doguinho: Doguinho) {
//        var doguinhos = getDoguinhos()
//        if let index = doguinhos.firstIndex(of: doguinho) {
//            doguinhos.remove(at: index)
//            print("Adeus doguinho")
//        }
//        UserDefaults.standard.set(try? PropertyListEncoder().encode(doguinhos),forKey: _doguinhoKey)
//    }
//}
//
//struct Cabeca {
//    var circunferencia: Int
//    var furosOrelha: Int
//    var pescoco: Int
//}
