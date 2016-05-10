//
//  ConfirmarInterfaceController.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarInterfaceController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var ingredienteString = ""

    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredienteLabel: WKInterfaceLabel!
    @IBOutlet var btnOrdenar: WKInterfaceButton!
    @IBOutlet var error: WKInterfaceLabel!
    
    @IBAction func ordenar() {
        pushControllerWithName("pantallaFin", context: configPizza)
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        configPizza = context as! ConfiguracionPizza

        switch(configPizza.tamaño){
        case 1:
            tamaño.setText("Chica")
        case 2:
            tamaño.setText("Mediana")
        case 3:
            tamaño.setText("Grande")
        default:
            tamaño.setText("Normal")
        }
        
        switch(configPizza.masa){
        case 1:
            masa.setText("Delgada")
        case 2:
            masa.setText("Crijuente")
        case 3:
            masa.setText("Gruesa")
        default:
            masa.setText("Normal")
            
        }
        
        switch(configPizza.queso){
        case 1:
            queso.setText("Cheddar")
        case 2:
            queso.setText("Mozarela")
        case 3:
            queso.setText("Parmesano")
        case 4:
            queso.setText("Sin queso")
        default:
            queso.setText("Sin queso")
            
        }
        
        var numeroIngredientes = 0
        for ingrediente in configPizza.ingredientes{
                           if ingrediente == 1{
                    ingredienteString += "Jamon,"
                    numeroIngredientes += 1
                }
                            if ingrediente == 2{
                    ingredienteString +=  "Piña,"
                    numeroIngredientes += 1
                }
          
                if ingrediente == 3{
                    ingredienteString +=  "Pepperoni,"
                    numeroIngredientes += 1
                }
           
                if ingrediente == 4{
                    ingredienteString +=  "Anchoas,"
                    numeroIngredientes += 1
                }
            
                if ingrediente == 5{
                    ingredienteString +=  "Aceitunas,"
                    numeroIngredientes += 1
                }
            
                if ingrediente == 6{
                    ingredienteString +=  "Salchicha,"
                    numeroIngredientes += 1
                }
           
                if ingrediente == 7{
                    ingredienteString +=  "Cebolla,"
                    numeroIngredientes += 1
                }
            
                if ingrediente == 8{
                    ingredienteString +=  "Pavo,"
                    numeroIngredientes += 1
                }
            
                if ingrediente == 9{
                    ingredienteString +=  "Pimiento,"
                    numeroIngredientes += 1
                }
        }
        
        ingredienteLabel.setText(ingredienteString)
        
        
        if numeroIngredientes > 5{
            btnOrdenar.setHidden(true)
            error.setText("Selecciona menos de 5 ingredientes.")
        }else{
            btnOrdenar.setHidden(false)
            error.setText("")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
