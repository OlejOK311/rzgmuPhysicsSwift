//
//  ChartViewController.swift
//  rzgmuPhysics
//
//  Created by Олег Плаксин on 22.01.2022.
//

import Charts
import UIKit

class ChartViewController: UIViewController, UITextFieldDelegate, ChartViewDelegate {

    @IBOutlet weak var x1: UITextField!
    @IBOutlet weak var y1: UITextField!
    @IBOutlet weak var x2: UITextField!
    @IBOutlet weak var y2: UITextField!
    @IBOutlet weak var x3: UITextField!
    @IBOutlet weak var y3: UITextField!
    
    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.x1.delegate = self
        self.y1.delegate = self
        self.x2.delegate = self
        self.y2.delegate = self
        self.x3.delegate = self
        self.y3.delegate = self

        lineChart.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func pushButton(_ sender: Any) {
        lineChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()

        entries.append(ChartDataEntry(x: Double(x1.text!)!, y: Double(y1.text!)!))
        entries.append(ChartDataEntry(x: Double(x2.text!)!, y: Double(y2.text!)!))
        entries.append(ChartDataEntry(x: Double(x3.text!)!, y: Double(y3.text!)!))
                           
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }
}
