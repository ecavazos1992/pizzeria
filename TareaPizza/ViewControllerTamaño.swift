//
//  ViewControllerTamaño.swift
//  TareaPizza
//
//  Created by Enrique  Cavazos Alonso on 18/04/16.
//  Copyright © 2016 Enrique  Cavazos Alonso. All rights reserved.
//

import UIKit

class ViewControllerTaman_o: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate  {
    //Outlets y Propiedades
    let tamañoData = ["Chica","Mediana","Grande"]
    
    @IBOutlet weak var tamaño: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamaño.delegate = self
        tamaño.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //metodos de instancia
    
    
    
    //Ciclo de vida

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewControllerMasa
        sigVista.tamaño = tamañoData[tamaño.selectedRowInComponent(0)]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamañoData.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamañoData[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
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
