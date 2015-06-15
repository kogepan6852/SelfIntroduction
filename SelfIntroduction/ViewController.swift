//
//  ViewController.swift
//  SelfIntroduction
//
//  Created by 堅固潤也 on 2015/06/14.
//  Copyright (c) 2015年 堅固潤也. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{

    
    @IBOutlet weak var IntroductionCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //IntroductionCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        IntroductionCollectionView!.dataSource = self
        IntroductionCollectionView!.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UICollectionViewDelegate Protocol
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as CustomCell

        cell.image.image = UIImage(named: "kengo.png")
        cell.backgroundColor = UIColor.blackColor()
        return cell
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4;
    }
    /*
    Cellが選択された際に呼び出される
    */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得　
        appDelegate.cellNumber = indexPath.row //appDelegateの変数を操作
        
    }
}



