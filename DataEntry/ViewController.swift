//
//  ViewController.swift
//  DataEntry
//
//  Created by Carlos Cortés Sánchez on 23/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
    }


}

