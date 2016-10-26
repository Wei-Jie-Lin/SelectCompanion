//
//  LoveVC.swift
//  Ch8Test
//
//  Created by 林暐潔 on 2016/10/20.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class LoveVC: UIViewController {
    
    @IBOutlet weak var starTF: UITextField!
    @IBOutlet weak var genderSC: UISegmentedControl!
    @IBOutlet weak var ageSL: UISlider!
    @IBOutlet weak var ageLB: UILabel!
    @IBOutlet weak var youSC: UISegmentedControl!
    @IBOutlet weak var showLB: UILabel!
    @IBOutlet weak var isyouBT: UIButton!
    @IBOutlet weak var heartSW: UISwitch!
    
    @IBAction func ageSL(_ sender: UISlider) {
        ageLB.text = String(Int(sender.value))
    }
    
    @IBAction func isyouBT(_ sender: AnyObject) {
        showLB.text = starTF.text
        let star = starTF.text!
        let gender = genderSC.selectedSegmentIndex
        let heart = heartSW.isOn
        let age = Int(ageSL.value)
        
        if star == "金牛座" && gender == 1 && heart && age <= 32 && age >= 25 {
            youSC.selectedSegmentIndex = 0
            youSC.isHidden = false
        } else {
            youSC.selectedSegmentIndex = 1
            youSC.isHidden = false
        }
    }
    
    // 按空白處會隱藏編輯狀態
    func hideKeyboard(_ tapG:UITapGestureRecognizer){
        self.view.endEditing(true)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isyouBT.setTitleColor(UIColor.red, for: .highlighted)
        
        // 增加一個觸控事件
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoveVC.hideKeyboard(_:)))
        tap.cancelsTouchesInView = false
        
        // 加在最基底的 self.view 上
        self.view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
