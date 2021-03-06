//
//  ViewController.swift
//  DataEntry
//
//  Created by Carlos Cortés Sánchez on 23/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    var components = [[String]]()
    var resultString = ""
    
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let pickerComponentString = segmentedControl.titleForSegment(at: index)!
        components = numberPickerComponents(from: pickerComponentString)
        resetPicker()
    }
    
    func numberPickerComponent(from char:Character) -> [String]{
        switch char{
        case "9":
            return ["0","1","2","3","4","5","6","7","8","9"]
        case "5":
            return ["0","1","2","3","4","5"]
        case "x":
            return ["0"," 1/16","1/8","3/16","1/4","5/16","3/8","7/16","1/2","9/16","5/8","11/16","3/4","13/16","7/8","15/16"]
        default:
            return [String(char)]
        }
    }
    
    func numberPickerComponents(from string:String)->[[String]]{
        
        var components = [[String]]()
        for char in string.characters{
            components += [numberPickerComponent(from:char)]
        }
        return components
    }
    func resetPicker(){
        picker.reloadAllComponents()
        for index in 0..<components.count{
            picker.selectRow(0, inComponent: index, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        segmentedControl.selectedSegmentIndex = 0
        let pickerComponentString = segmentedControl.titleForSegment(at: 0)!
        components = numberPickerComponents(from: pickerComponentString)
    }
    
    
    //:MARK - Delegates and data sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return components.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultString = ""
        for index in 0..<components.count{
            let digit = components[index][pickerView.selectedRow(inComponent: index)]
            if digit.characters.count > 1 {//add space if more than one character
                resultString += " " //add space if more than one character
            }
            resultString += digit
        }
        displayLabel.text = resultString
    }
    
}
