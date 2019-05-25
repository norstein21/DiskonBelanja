//
//  ViewController.swift
//  DiskonBelanja
//
//  Created by norstein21 on 07/05/19.
//  Copyright © 2019 fntstic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textHarga: UITextField!
    @IBOutlet weak var isi: UILabel!
    @IBOutlet weak var isi2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hitung(_ sender: UIButton) {
        var harga = Int(textHarga.text!)
        if harga! >= 10000 {
            var diskon:Double = Double(harga!) * 0.2
            var total:Double = Double(harga!) - Double(diskon)
            isi.text = String ("Anda mendapatkan diskon 20 % ")
            isi2.text = String ("Total yg harus dibayar adalah \(total)")
        }
        
        else if harga! >= 50000 {
            var diskon:Double = Double(harga!) * 0.3
            var total:Double = Double(harga!) - Double(diskon)
            isi.text = String ("Anda mendapatkan diskon : 30 % ")
            isi2.text = String ("Total yg harus dibayar : \(total)")
        }
        
        else {
            var diskon:Double = Double(harga!) * 0.1
            var total:Double = Double(harga!) - Double(diskon)
            isi.text = String ("Anda mendapatkan diskon 10 % ")
            isi2.text = String ("Total yg harus dibayar adalah \(total)")
        }
        
    }
    
}



