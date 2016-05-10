//
//  MasaInterfaceController.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var masa = 0

    @IBOutlet var btnDelgada: WKInterfaceButton!
    @IBOutlet var btnCrujiente: WKInterfaceButton!
    @IBOutlet var btnGruesa: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        configPizza = context as! ConfiguracionPizza
    }

    @IBAction func Delgada() {
        masa = 1
        llamarVistaQueso()
    }
    @IBAction func Crujiente() {
        masa = 2
        llamarVistaQueso()
    }
    @IBAction func Gruesa() {
        masa = 3
        llamarVistaQueso()
    }
    
    func llamarVistaQueso(){
        configPizza.asignaMasa(masa)
        pushControllerWithName("pantallaQueso", context: configPizza)
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
