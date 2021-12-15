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
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "circunferencia")
        }else {
            print("null value added")
        }
    }
    
    func addOrelha(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "orelha")
        }else {
            print("null value added")
        }
    }
    
    func addPescoco(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "pescoco")
        }else {
            print("null value added")
        }
    }
    
    func addBusto(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "busto")
        }else {
            print("null value added")
        }
    }
    
    func addCintura(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "cintura")
        }else {
            print("null value added")
        }
    }
    
    func addQuadril(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "quadril")
        }else {
            print("null value added")
        }
    }
    
    func addCoxa(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "coxa")
        }else {
            print("null value added")
        }
    }
    
    func addPanturrilha(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "panturrilha")
        }else {
            print("null value added")
        }
    }
    
    func addBainha(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "bainha")
        }else {
            print("null value added")
        }
    }
    
    func addPe(value: String?) {
        if value != nil {
            UserDefaults.standard.set(value!, forKey: "pe")
        }else {
            print("null value added")
        }
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
}
