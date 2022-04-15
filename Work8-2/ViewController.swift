//
//  ViewController.swift
//  Work8-2
//
//  Created by 彭有駿 on 2022/4/15.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var MoneyTextField: UITextField!
    
    @IBOutlet weak var tipTextField: UITextField!
    
    @IBOutlet weak var peopleTextField: UITextField!
    
    @IBOutlet weak var totalMoneyLable: UILabel!
    
    @IBOutlet weak var avageMoneyLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalMoneyLable.text = "0"
        avageMoneyLable.text = "0"
        // Do any additional setup after loading the view.
    }
    
    
    //計算
    @IBAction func calculateBtn(_ sender: UIButton) {
        
        //收鍵盤
        MoneyTextField.resignFirstResponder()
        tipTextField.resignFirstResponder()
        peopleTextField.resignFirstResponder()
        if MoneyTextField.text == "" || tipTextField.text == "" || peopleTextField.text == "" {
            alert1()
        }else{
            
            let coin = Double(MoneyTextField.text!)! * Double(tipTextField.text!)! / 100
            
            let total = Double(MoneyTextField.text!)! + coin
            
            let ava = total / Double(peopleTextField.text!)!
            
            totalMoneyLable.text = String(total)
            avageMoneyLable.text = String(ava)
            
            }
}
    
    //重置
    @IBAction func resetBtn(_ sender: UIButton) {
        
        MoneyTextField.text = ""
        tipTextField.text = ""
        peopleTextField.text = ""
        totalMoneyLable.text = "0"
        avageMoneyLable.text = "0"
    }
    
    
    //提示視窗
    func alert1(){
        let alertController = UIAlertController(title: "提醒！", message: "不可空白請輸入完整資訊", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default,handler: nil)
        
        alertController.addAction(okAction)
        present(alertController,animated: true,completion: nil)
    }
    
    

}

