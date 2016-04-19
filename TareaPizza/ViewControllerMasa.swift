//
//  ViewControllerMasa.swift
//  TareaPizza
//
//  Created by Enrique  Cavazos Alonso on 18/04/16.
//  Copyright © 2016 Enrique  Cavazos Alonso. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    let masaData = ["Delgada","Crujiente","Gruesa"]
    var tamaño = ""
    @IBOutlet weak var masa: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        masa.delegate = self
        masa.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewControllerQueso
        sigVista.tamaño = tamaño
        sigVista.masa = masaData[masa.selectedRowInComponent(0)]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masaData.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masaData[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
