//
//  QuesoInterfaceController.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var queso = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        configPizza = context as! ConfiguracionPizza
    }
    
    @IBAction func cheddar() {
        queso = 1
        llamarVistaIngredientes()
    }
    
    @IBAction func Mozarela() {
        queso = 2
        llamarVistaIngredientes()
    }
    @IBAction func parmesano() {
        queso = 3
        llamarVistaIngredientes()
    }
    
    @IBAction func sinQueso() {
        queso = 4
        llamarVistaIngredientes()
    }

    
    func llamarVistaIngredientes(){
        configPizza.asignaQueso(queso)
        pushControllerWithName("pantallaIngredientes", context: configPizza)
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
