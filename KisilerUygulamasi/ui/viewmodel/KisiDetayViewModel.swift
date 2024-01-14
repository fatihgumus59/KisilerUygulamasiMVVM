//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 14.01.2024.
//

import Foundation

class KisiDetayViewModel{
    
    var kRepo = KisilerDaoRepository()
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        kRepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
}
