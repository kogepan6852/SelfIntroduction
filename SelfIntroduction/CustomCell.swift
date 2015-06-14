//
//  CustomCell.swift
//  SelfIntroduction
//
//  Created by 堅固潤也 on 2015/06/14.
//  Copyright (c) 2015年 堅固潤也. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet var image:UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
}
