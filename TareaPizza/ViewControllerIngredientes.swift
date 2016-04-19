//
//  ViewControllerIngredientes.swift
//  TareaPizza
//
//  Created by Enrique  Cavazos Alonso on 18/04/16.
//  Copyright © 2016 Enrique  Cavazos Alonso. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {


    @IBOutlet weak var ingredientes: UIPickerView!
    var masa = ""
    var tamaño = ""
    var queso = ""
    let ingredientesData = [
            ["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"],
            ["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"],
            ["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"],
            ["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"],
            ["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientes.delegate = self
        ingredientes.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewControllerConfirmacion
        sigVista.tamaño = tamaño
        sigVista.masa = masa
        sigVista.queso = queso
        let ingrediente1 = ingredientesData[0][ingredientes.selectedRowInComponent(0)]
        let ingrediente2 = ingredientesData[1][ingredientes.selectedRowInComponent(1)]
        let ingrediente3 = ingredientesData[2][ingredientes.selectedRowInComponent(2)]
        let ingrediente4 = ingredientesData[3][ingredientes.selectedRowInComponent(3)]
        let ingrediente5 = ingredientesData[4][ingredientes.selectedRowInComponent(4)]
        sigVista.ingredientes1 = "" + ingrediente1 + ", " + ingrediente2
        sigVista.ingredientes2 = ingrediente3 + ", " + ingrediente4 + ", " + ingrediente5
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return ingredientesData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredientesData[component][row]
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredientesData[component].count
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
