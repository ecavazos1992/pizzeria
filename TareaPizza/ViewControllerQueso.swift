//
//  ViewControllerQueso.swift
//  TareaPizza
//
//  Created by Enrique  Cavazos Alonso on 18/04/16.
//  Copyright © 2016 Enrique  Cavazos Alonso. All rights reserved.
//

import UIKit

class ViewControllerQueso: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    let quesoData = ["Cheddar","Mozarella","Parmesano","Sin Queso"]
    var masa = ""
    var tamaño = ""
    @IBOutlet weak var queso: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        queso.delegate = self
        queso.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewControllerIngredientes
        sigVista.tamaño = tamaño
        sigVista.masa = masa
        sigVista.queso = quesoData[queso.selectedRowInComponent(0)]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesoData.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesoData[row]
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
