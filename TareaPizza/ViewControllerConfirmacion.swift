//
//  ViewControllerConfirmacion.swift
//  TareaPizza
//
//  Created by Enrique  Cavazos Alonso on 18/04/16.
//  Copyright © 2016 Enrique  Cavazos Alonso. All rights reserved.
//

import UIKit

class ViewControllerConfirmacion: UIViewController {

    var masa = ""
    var tamaño = ""
    var queso = ""
    var ingredientes1 = ""
    var ingredientes2 = ""
    
    @IBOutlet weak var labelTamaño: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngredientes1: UILabel!
    @IBOutlet weak var labelIngredientes2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        labelTamaño.text = "\(tamaño)"
        labelMasa.text = "\(masa)"
        labelQueso.text = "\(queso)"
        labelIngredientes1.text = "\(ingredientes1)"
        labelIngredientes2.text = "\(ingredientes2)"
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
