//
//  IngredientesInterfaceController.swift
//  CrearPizzaAW
//
//  Created by Avril  Hernández on 06/05/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    @IBOutlet var btnContinuar: WKInterfaceButton!
    var configPizza = ConfiguracionPizza()
    var ingredientes = [0]
    
    var jamonEstatus = false
    var piñaEstatus = false
    var pepperoniEstatus = false
    var anchoasEstatus = false
    var aceitunaEstatus = false
    var salchichaEstatus = false
    var cebollaEstatus = false
    var pavoEstatus = false
    var pimientoEstatus = false
    
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    @IBOutlet var aceitunas: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        configPizza = context as! ConfiguracionPizza
        //if (ingredientes.isEmpty){
            btnContinuar.setHidden(true)
      /*
        }
        else{
            btnContinuar.setHidden(false)
        }*/
    }
    
    @IBAction func continuar() {
        ingredientes.removeAll()
        if jamonEstatus{
            ingredientes.append(1)
        }
        if piñaEstatus{
            ingredientes.append(2)
        }
        if pepperoniEstatus{
            ingredientes.append(3)
        }
        if anchoasEstatus{
            ingredientes.append(4)
        }
        if aceitunaEstatus{
            ingredientes.append(5)
        }
        if salchichaEstatus{
            ingredientes.append(6)
        }
        if cebollaEstatus{
            ingredientes.append(7)
        }
        if pavoEstatus{
            ingredientes.append(8)
        }
        if pimientoEstatus{
            ingredientes.append(9)
        }
        
        configPizza.asignaIngredientes(ingredientes)
        pushControllerWithName("pantallaConfirmacion", context: configPizza)
    }


    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if (ingredientes.contains(0)){
            btnContinuar.setHidden(true)
        }
        else{
            btnContinuar.setHidden(false)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func jamonValue(value: Bool) {
        jamonEstatus = value
        validaSwitch()
    }

    @IBAction func piñaValue(value: Bool) {
        piñaEstatus = value
        validaSwitch()
    }
    @IBAction func pepperoniValue(value: Bool) {
        pepperoniEstatus = value
        validaSwitch()
    }
    @IBAction func anchoasValue(value: Bool) {
        anchoasEstatus = value
        validaSwitch()
    }
    
    @IBAction func aceitunasValue(value: Bool) {
        aceitunaEstatus = value
        validaSwitch()
    }
    @IBAction func salchichaValue(value: Bool) {
        salchichaEstatus = value
        validaSwitch()
    }
    @IBAction func cebollaValue(value: Bool) {
        cebollaEstatus = value
        validaSwitch()
    }
    @IBAction func pavoValue(value: Bool) {
        pavoEstatus = value
        validaSwitch()
    }
    @IBAction func pimientoValue(value: Bool) {
        pimientoEstatus = value
        validaSwitch()
    }
    
    func validaSwitch() {
        if jamonEstatus || piñaEstatus || pepperoniEstatus || anchoasEstatus || aceitunaEstatus
        || salchichaEstatus || cebollaEstatus || pavoEstatus || pimientoEstatus {
            btnContinuar.setHidden(false)
        }
        else{
            btnContinuar.setHidden(true)
        }
    }
}
