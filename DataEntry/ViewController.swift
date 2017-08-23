//
//  ViewController.swift
//  DataEntry
//
//  Created by Carlos Cortés Sánchez on 23/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    //MARK: Properties
    var components = [[String]]()
    var resultString = ""
    
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

    //MARK: Delegates and data sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return components.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[component][row]
    }

}

