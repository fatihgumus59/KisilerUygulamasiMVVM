//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 21.12.2023.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var kisiAd: UITextField!
    @IBOutlet weak var kisiTel: UITextField!
    
    var viewModel = KisiKayitViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func kisiKaydet(_ sender: Any) {
        
        if let ka = kisiAd.text ,let kt = kisiTel.text{
            viewModel.kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }
    

}
