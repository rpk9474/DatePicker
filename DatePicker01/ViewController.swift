//
//  ViewController.swift
//  DatePicker01
//
//  Created by D7702_10 on 2019. 4. 17..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        // DatePicker 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
    }


    @IBAction func valueChanged(_ sender: Any) {
        
        let selectedData = myDatePicker.date
        print(myDatePicker.date)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE a"
        outLabel.text = formatter.string(from: selectedData)
        
    }
}

