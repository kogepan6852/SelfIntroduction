//
//  ViewContrller2.swift
//  SelfIntroduction
//
//  Created by 堅固潤也 on 2015/06/14.
//  Copyright (c) 2015年 堅固潤也. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var myWord: UILabel!
    @IBOutlet weak var myHobby: UILabel!
    @IBOutlet weak var myCompany: UILabel!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    //パラメータ受取用プロパティ
    var param:Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var cellNumber = appDelegate.cellNumber
        
        let image: [String] = ["kengo.png", "kengo.png", "kengo.png", "kengo.png"]
        let name: [String] = ["堅固", "最上", "魔法使い", "僧侶"]
        let company: [String] = ["勇者", "社会人", "魔法使い", "僧侶"]
        let hobby: [String] = ["将棋", "戦士", "魔法使い", "僧侶"]
        let word: [String] = ["主催者！！", "戦士", "魔法使い", "僧侶"]
        myImage.image = UIImage(named: image[cellNumber!])
        myName.text = name[cellNumber!]
        myCompany.text = company[cellNumber!]
        myHobby.text = hobby[cellNumber!]
        myWord.text = word[cellNumber!]
        
        
    }
    
    
}
