////
////  MeasureModel.swift
////  presentin
////
////  Created by Daniel Bastos on 14/12/21.
////
//
import UIKit

class MeasureModel: infoDelegate {
    
    func addCircunferencia(value: String?) {
        UserDefaults.standard.set(value, forKey: "circunferencia")
    }
    
    func getCircunferencia() -> String? {
        return UserDefaults.standard.value(forKey: "circunferencia") as? String
    }
    
    func addOrelha(value: String?) {
        UserDefaults.standard.set(value!, forKey: "orelha")
    }
    
    func getOrelha() -> String? {
        return UserDefaults.standard.value(forKey: "orelha") as? String
    }
    
    func addPescoco(value: String?) {
        UserDefaults.standard.set(value!, forKey: "pescoco")
    }
    
    func getPescoco() -> String? {
        return UserDefaults.standard.value(forKey: "pescoco") as? String
    }
    
    func addBusto(value: String?) {
        UserDefaults.standard.set(value!, forKey: "busto")
    }
    
    func getBusto() -> String? {
        return UserDefaults.standard.value(forKey: "busto") as? String
    }
    
    func addCintura(value: String?) {
        UserDefaults.standard.set(value!, forKey: "cintura")
    }
    
    func getCintura() -> String? {
        return UserDefaults.standard.value(forKey: "cintura") as? String
    }
    
    func addQuadril(value: String?) {
        UserDefaults.standard.set(value!, forKey: "quadril")
    }
    
    func getQuadril() -> String? {
        return UserDefaults.standard.value(forKey: "quadril") as? String
    }
    
    func addCoxa(value: String?) {
        UserDefaults.standard.set(value!, forKey: "coxa")
    }
    
    func getCoxa() -> String? {
        return UserDefaults.standard.value(forKey: "coxa") as? String
    }
    
    func addPanturrilha(value: String?) {
        UserDefaults.standard.set(value!, forKey: "panturrilha")
    }
    
    func getPanturrilha() -> String? {
        return UserDefaults.standard.value(forKey: "panturrilha") as? String
    }
    
    func addBainha(value: String?) {
        UserDefaults.standard.set(value!, forKey: "bainha")
    }
    
    func getBainha() -> String? {
        return UserDefaults.standard.value(forKey: "bainha") as? String
    }
    
    func addPe(value: String?) {
        UserDefaults.standard.set(value!, forKey: "pe")
    }
    
    func getPe() -> String? {
        return UserDefaults.standard.value(forKey: "pe") as? String
    }
    
}

protocol infoDelegate {
    func addCircunferencia(value : String?)
    func addOrelha(value : String?)
    func addPescoco(value : String?)
    func addBusto(value : String?)
    func addCintura(value : String?)
    func addQuadril(value : String?)
    func addCoxa(value : String?)
    func addPanturrilha(value : String?)
    func addBainha(value : String?)
    func addPe(value : String?)
    
    func getCircunferencia() -> String?
    func getOrelha() -> String?
    func getPescoco() -> String?
    func getBusto() -> String?
    func getCintura() -> String?
    func getQuadril() -> String?
    func getCoxa() -> String?
    func getPanturrilha() -> String?
    func getBainha() -> String?
    func getPe() -> String?
}
