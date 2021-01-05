//
//  MacroViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 29/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class MacroViewController: UIViewController {

    @IBOutlet weak var macro: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        macro.text = "Macrominerals are minerals required in relatively large amounts and include sodium, chloride, potassium, calcium, phosphate, and magnesium.\n\nHere is a table of some macrominerals, their sources, and functions:"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
