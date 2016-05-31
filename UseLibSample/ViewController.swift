//
//  ViewController.swift
//  UseLibSample
//
//  Created by Developer on 2016/05/27.
//  Copyright © 2016年 kotetu. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var reactiveTextField: UITextField!
    @IBOutlet weak var sampleLabel: UILabel!

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        reactiveTextField.rx_text
            .map{
                "Out:\($0)"
            }
            .bindTo(sampleLabel.rx_text)
            .addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

