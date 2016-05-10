//
//  TamañoInterfaceController.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import WatchKit
import Foundation


class TamañoInterfaceController: WKInterfaceController {
    var tamaño:Int = 0
    @IBOutlet var btnChica: WKInterfaceButton!
    @IBOutlet var btnMediana: WKInterfaceButton!
    @IBOutlet var btnGrande: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func Chica() {
        tamaño = 1
        llamaVistaMasa()
    }
    
    @IBAction func Mediana() {
        tamaño = 2
        llamaVistaMasa()
    }
    
    @IBAction func Grande() {
        tamaño = 3
        llamaVistaMasa()
    }
    
    func llamaVistaMasa(){
        let configPizza = ConfiguracionPizza()
        configPizza.asignaTamaño(tamaño)
        pushControllerWithName("pantallaMasa", context: configPizza)
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
