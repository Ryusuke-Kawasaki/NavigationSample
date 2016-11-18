//
//  ViewController.swift
//  NavigationSample
//
//  Created by 川崎 隆介 on 2015/12/09.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pushButton(_ sender: AnyObject) {
        //遷移先のコントローラを生成
        if let nextController = self.storyboard?.instantiateViewController(withIdentifier: "nextController") {
            self.navigationController?.pushViewController(nextController, animated: true)
        }
        //NavigationControllerにコントローラをプッシュ
    }
    
    func pushRightButton(_ sender:UIButton) {
        print("pushRightButton")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //戻るボタンの設定
        let backButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButtonItem
        
        //右ボタンの設定
        //let rightButtonItem = UIBarButtonItem(title: "Right", style: .plain, target: nil, action: nil)
        
        //右ボタンにアクションを実装
        let rightButtonItem = UIBarButtonItem(title: "Right", style: .plain, target: self, action: #selector(ViewController.pushRightButton(_:)))

        self.navigationItem.rightBarButtonItem = rightButtonItem
        //タイトルの設定
        self.navigationItem.title = "title"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

