//
//  ConfiguracionPizza.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import Foundation
import WatchKit

class ConfiguracionPizza: NSObject {
    var tamaño:Int = 0
    var masa:Int = 0
    var queso:Int = 0
    var ingredientes:[Int] = [0]
    
    func inicializa(){
        tamaño = 0
        masa = 0
        queso = 0
        ingredientes = [0]
    }
    
    func asignaTamaño(valor:Int){
        tamaño = valor
    }
    
    func asignaMasa(valor:Int){
        masa = valor
    }
    
    func asignaQueso(valor:Int){
        queso = valor
    }
    
    func asignaIngredientes(valor:[Int]){
        ingredientes = valor
    }
}

